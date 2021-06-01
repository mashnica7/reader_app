import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/ui/ui_sizes.dart';
import '../../../../core/ui/widgets/web_image.dart';
import '../../../../routes/router.gr.dart';
import '../../domain/entities/book_list.dart';

class BookListCell extends StatelessWidget {
  final BookList book;
  final Function() onConfirm;

  const BookListCell({Key key, this.book, this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: book.key,
      flightShuttleBuilder: (BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext) =>
          Material(child: toHeroContext.widget),
      child: _bookCard(context),
    );
  }

  Card _bookCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5.0,
      shadowColor: RED_SHADOW_COLOR,
      child: InkWell(
        splashColor: Colors.blueGrey,
        onTap: () {
          ExtendedNavigator.of(context).push(Routes.bookListDetailsPage,
              arguments: BookListDetailsPageArguments(book: book));
        },
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          child: Container(
            height: MediaQuery.of(context).size.height < minPageHeight
                ? MediaQuery.of(context).size.height / 3
                : MediaQuery.of(context).size.height / 4,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: _bookImage(context),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 10.0, bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (book.title != null) ...[
                          Text(
                            book.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(color: BLUE_PRIMARY_COLOR),
                          )
                        ],
                        if (book.authorName != null) ...[
                          Text(
                            book.authorName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: DARK_GREY),
                          )
                        ],
                        if (book.firstSentence != null) ...[
                          const Spacer(),
                          _description(context),
                        ],
                        const Spacer(),
                        _otherInformation(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _description(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Text(
          book.firstSentence,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(color: GREY, fontFamily: 'DejaVuSans'),
        ));
  }

  Widget _bookImage(BuildContext context) {
    String imageUrl = '';

    if (book.coverI != null) {
      imageUrl = '$cCoverEndpoint/${book.coverI}-M.jpg';
    }

    return WebImage(
      imageUrl: imageUrl,
      maxHeight: MediaQuery.of(context).size.height < minPageHeight
          ? MediaQuery.of(context).size.height / 3
          : MediaQuery.of(context).size.height / 4,
      maxWidth: MediaQuery.of(context).size.width,
      placeholderSize: MediaQuery.of(context).size.width * 0.17,
      alignment: Alignment.center,
      fit: BoxFit.cover,
    );
  }

  Widget _otherInformation(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomLeft,
      child: _detailsColumn(context),
    );
  }

  Column _detailsColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (book.publisher != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Publisher: ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: BLUE_PRIMARY_COLOR),
              ),
              Text(
                book.publisher,
                maxLines:
                    MediaQuery.of(context).size.height < minPageHeight ? 2 : 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: GREY, fontFamily: 'DejaVuSans'),
              )
            ],
          )
        ],
        if (book.publishYear != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Publish years: ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: BLUE_PRIMARY_COLOR),
              ),
              Text(
                book.publishYear,
                maxLines:
                    MediaQuery.of(context).size.height < minPageHeight ? 2 : 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: GREY, fontFamily: 'DejaVuSans'),
              )
            ],
          )
        ],
      ],
    );
  }
}
