import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reader_app/routes/router.gr.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/ui/ui_sizes.dart';
import '../../../../core/ui/widgets/web_image.dart';
import '../../../lists/presentation/bloc/lists/lists_bloc.dart';
import '../../../lists/presentation/pages/lists_page.dart';
import '../../domain/entities/book.dart';

class BookCell extends StatelessWidget {
  final Book book;
  const BookCell({Key key, this.book}) : super(key: key);

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
          ExtendedNavigator.of(context).push(Routes.bookDetailsPage,
              arguments: BookDetailsPageArguments(book: book));
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
                        const Spacer(),
                        _addToList(context),
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

  Widget _addToList(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          primary: Colors.white, backgroundColor: Colors.lightBlue // foreground
          ),
      onPressed: () {
        context.read<ListsBloc>()..add(const ListsEvent.loadLists());
        _showDialog(context: context, book: book, onConfirm: (_) {});
      },
      child: const Text('Add to List'),
    );
  }

  /// # Show Dialog
  ///
  /// Preview all reading lists with posability of adding [book] in some list.
  ///
  // ignore: always_declare_return_types
  _showDialog(
      {@required BuildContext context,
      @required Book book,
      @required void Function(String value) onConfirm}) async {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return ListsPage(book: book);
        });
  }

  Widget _description(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Text(
          book.firstSentence,
          maxLines: MediaQuery.of(context).size.height < minPageHeight ? 2 : 3,
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
          Wrap(
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
                maxLines: 2,
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
          Wrap(
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
                maxLines: 1,
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
