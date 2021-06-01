import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/ui/widgets/animated_reload_error_indicator.dart';
import '../../../../core/ui/widgets/images_carousel/images_carousel.dart';
import '../../../../injection/injection.dart';
import '../../domain/entities/book_list.dart';
import '../bloc/book_details/book_details_bloc.dart';

class BookListDetailsPage extends StatelessWidget {
  final BookList book;

  const BookListDetailsPage({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<BookDetailsBloc>()
          ..add(BookDetailsEvent.loadBook(bookList: book)),
        child: BookListDetailsPageContent(parentBook: book));
  }
}

class BookListDetailsPageContent extends StatelessWidget {
  /// in case of error [parentBook] is used to refresh page
  final BookList parentBook;

  const BookListDetailsPageContent({Key key, this.parentBook})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: BlocBuilder<BookDetailsBloc, BookDetailsState>(
              builder: (context, state) => state.maybeWhen(
                  loaded: (loadedBook) => Text(loadedBook.title),
                  orElse: () => Container())),
          actions: [
            BlocBuilder<BookDetailsBloc, BookDetailsState>(
                builder: (context, state) => state.maybeWhen(
                    loaded: (loadedBook) => IconButton(
                          icon: const Icon(Icons.note_add),
                          color: Colors.white,
                          tooltip: 'Create Note',
                          onPressed: () {
                            _showDialog(
                                context: context,
                                labelText: 'Add note',
                                icon: Icons.note_add,
                                onConfirm: (value) {
                                  context.read<BookDetailsBloc>().add(
                                      BookDetailsEvent.addNote(
                                          book: loadedBook, note: value));
                                });
                          },
                        ),
                    orElse: () => Container()))
          ]),
      body: BlocBuilder<BookDetailsBloc, BookDetailsState>(
        builder: (context, state) => state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (loadedBook) => ListView(
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            children: [_BookDetails(context, loadedBook)],
          ),
          error: (message) => AnimatedReloadExceptionIndicator(
            title: "Ups...",
            heightFactor: 0.21,
            message: message,
            onTryAgain: () {
              context.read<BookDetailsBloc>()
                ..add(BookDetailsEvent.loadBook(bookList: parentBook));
            },
          ),
        ),
      ),
    );
  }

  Widget _BookDetails(BuildContext context, BookList bookList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _imagesCarousel(context, bookList),
        if (bookList.title != null) ...[
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
            child: Text(
              bookList.title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.blue),
            ),
          ),
        ],
        if (bookList.authorName != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              bookList.authorName,
              textAlign: TextAlign.left,
              style:
                  Theme.of(context).textTheme.subtitle2.copyWith(color: GREY),
            ),
          )
        ],
        if (bookList.firstSentence != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
            child: Text(
              bookList.firstSentence,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ],
        _otherInfo(context, bookList),
        if (bookList.notes != null) ...[
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.note,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Notes',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: GREY, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          if (bookList.notes.split(';;').isNotEmpty)
            ...List.generate(bookList.notes.split(';;').length, (i) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    bookList.notes.split(';;')[i],
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: GREY_TEXT_FORM_FIELD_COLOR,
                        fontStyle: FontStyle.italic),
                  ),
                )),
              );
            })
        ],
      ],
    );
  }

  Widget _imagesCarousel(BuildContext context, BookList bookList) {
    String imageUrl = '';
    if (bookList.coverI != null) {
      imageUrl = '$cCoverEndpoint/${bookList.coverI}-L.jpg';
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

  Widget _otherInfo(BuildContext context, BookList bookList) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (bookList.publisher != null) ...[
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
                bookList.publisher,
                maxLines: 5,
                style:
                    Theme.of(context).textTheme.bodyText1.copyWith(color: GREY),
              ),
            )
          ],
          if (bookList.publishYear != null) ...[
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
                bookList.publishYear,
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

  _showDialog(
      {@required BuildContext context,
      String initalText,
      String labelText,
      IconData icon,
      @required void Function(String value) onConfirm}) async {
    final TextEditingController controller = TextEditingController();
    controller.text = initalText ?? '';
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
    await showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: USER_ICON_GREY,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                autofocus: true,
                maxLines: 10,
                controller: controller,
                decoration: InputDecoration(
                  hoverColor: Colors.blue,
                  labelText: labelText ?? '',
                  labelStyle: const TextStyle(color: Colors.blue),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.blue,
              ),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                    color: USER_ICON_GREY,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              )),
          TextButton(
            onPressed: () {
              onConfirm(controller.text);
              Navigator.of(dialogContext).pop();
            },
            child: const Text(
              'Add',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
