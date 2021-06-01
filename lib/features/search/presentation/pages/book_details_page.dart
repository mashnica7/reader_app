import 'package:flutter/material.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/ui/widgets/images_carousel/images_carousel.dart';
import '../../domain/entities/book.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({Key key, this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(book.title)),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 20, top: 20),
          children: [_BookDetails(context)],
        ));
  }

  Widget _BookDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _imagesCarousel(context, book),
        if (book.title != null) ...[
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
            child: Text(
              book.title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.blue),
            ),
          ),
        ],
        if (book.authorName != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              book.authorName,
              textAlign: TextAlign.left,
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(color: GREY),
            ),
          )
        ],
        if (book.firstSentence != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
            child: Text(
              book.firstSentence,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        _otherInfo(context, book),
      ],
    );
  }

  Widget _imagesCarousel(BuildContext context, Book Book) {
    String imageUrl = '';
    if (Book.coverI != null) {
      imageUrl = '$cCoverEndpoint/${Book.coverI}-L.jpg';
    }
    return ImagesCarousel(
      initialImageIndex: 0,
      borderRadius: 18,
      carouselH: MediaQuery.of(context).size.width,
      carouselW: MediaQuery.of(context).size.width,
      imageUrls: [imageUrl],
      axis: Axis.horizontal,
      imageFit: BoxFit.fitHeight,
      deleteEnabled: false,
      placeholderSize: 100,
      allowZoom: false,
      onDelete: ({int imageIndex}) {},
    );
  }

  Widget _otherInfo(BuildContext context, Book Book) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Book.publisher != null) ...[
            Text(
              'Publiser:',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: BLUE_PRIMARY_COLOR),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                Book.publisher,
                maxLines: 5,
                style:
                    Theme.of(context).textTheme.bodyText1.copyWith(color: GREY),
              ),
            )
          ],
          if (Book.publishYear != null) ...[
            Text(
              'Publish years:',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: BLUE_PRIMARY_COLOR),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                Book.publishYear,
                maxLines: 5,
                style:
                    Theme.of(context).textTheme.bodyText1.copyWith(color: GREY),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
