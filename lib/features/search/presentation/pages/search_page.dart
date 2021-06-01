import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/widgets/animated_reload_error_indicator.dart';
import '../../../../injection/injection.dart';
import '../../domain/entities/book.dart';
import '../bloc/search_bloc.dart';
import '../widgets/book_cell.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<SearchBloc>()..add(const SearchEvent.search(text: "")),
        child: SearchPageBuilder());
  }
}

class SearchPageBuilder extends StatelessWidget {
  final ScrollController scrollController = ScrollController();

  final TextEditingController textEditingController = TextEditingController();

  final GlobalKey globalKey = GlobalKey();

  SearchPageBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification &&
                    scrollController.position.extentAfter == 0) {
                  context.read<SearchBloc>().add(SearchEvent.fetchNextPage(
                      text: textEditingController.text));
                }
                return false;
              },
              child: CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    //If true, the AppBar floats as soon as the list is scrolled down, If False the AppBar doesn’t appear unless the top of the List appears.
                    floating: true,
                    actions: [
                      textEditingController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                textEditingController.clear();
                                context.read<SearchBloc>()
                                  ..add(SearchEvent.search(
                                      text: textEditingController.text));
                              },
                            )
                          : Container()
                    ],

                    flexibleSpace: textFieldWidget(context),

                    // Make the initial height of the SliverAppBar larger than normal.
                    expandedHeight: 50,
                  ),
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {
                      context.read<SearchBloc>()
                        ..add(SearchEvent.search(
                            text: textEditingController.text));
                    },
                  ),
                  listWidget(context, state)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoTextField(
        padding: const EdgeInsets.all(10.0),
        key: globalKey,
        controller: textEditingController,
        onSubmitted: (text) {
          context
              .read<SearchBloc>()
              .add(SearchEvent.search(text: textEditingController.text));
        },
        keyboardType: TextInputType.text,
        placeholder: 'Title, author  name',
        autocorrect: false,
        placeholderStyle: const TextStyle(
          color: Color(0xffC4C6CC),
          fontSize: 14.0,
          fontFamily: 'Brutal',
        ),
        prefix: const Padding(
          padding: EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
          child: Icon(
            Icons.search,
            color: Color(0xffC4C6CC),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffF0F1F5),
        ),
      ),
    );
  }

  Widget listWidget(BuildContext context, SearchState state) {
    return state.when(
        initial: () => _loadingWidget(),
        loading: () => _loadingWidget(),
        loaded: (books) => _booksSliverListWidget(
            books: books.books,
            totalNumberOfBooks: books.numFound,
            context: context),
        error: (message) => _errorWidget(context, message: message));
  }

  Widget _loadingWidget() => const SliverFillRemaining(
      child: Center(child: CircularProgressIndicator()));

  Widget _errorWidget(BuildContext context, {String message}) {
    return SliverFillRemaining(
      child: Column(children: [
        AnimatedReloadExceptionIndicator(
          title: "Ups...",
          heightFactor: 0.21,
          message: message,
          onTryAgain: () {
            context
                .read<SearchBloc>()
                .add(SearchEvent.search(text: textEditingController.text));
          },
        ),
      ]),
    );
  }

  Widget _buildLoaderListItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  SliverList _booksSliverListWidget(
      {List<Book> books, int totalNumberOfBooks, BuildContext context}) {
    if (books.isEmpty) {
      return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          _emptyListPlaceholder(),
        ]),
      );
    }
    final List<Widget> res = [];
    final int count =
        books.length == totalNumberOfBooks ? books.length : books.length + 1;
    for (int index = 0; index < count; index++) {
      if (index >= books.length) {
        res.add(_buildLoaderListItem());
      } else {
        res.add(BookCell(
          book: books[index],
        ));
      }
    }
    return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
        ...res,
      ]),
    );
  }

  Padding _emptyListPlaceholder() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
        child: ListTile(
          leading: Icon(
            Icons.book,
            size: 60,
            color: Colors.lightBlue,
          ),
          title: Text('No data'),
          subtitle: Text(
              'There is no data in the database for the selected criterion. Please select another criterion and try again. Once the data is available, it will be displayed here.'),
        ),
      ),
    );
  }
}
