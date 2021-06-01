import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../core/constants/key_constants.dart';
import '../../../../core/ui/widgets/animated_reload_error_indicator.dart';
import '../../../search/domain/entities/book.dart';
import '../../data/datasources/lists_local_datasource.dart';
import '../bloc/list/list_bloc.dart';
import '../bloc/lists/lists_bloc.dart';
import '../widgets/book_list_cell.dart';
import 'lists_page.dart';

class ListPage extends StatelessWidget {
  final String listName;
  const ListPage({Key key, this.listName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(listName)),
      body: BlocBuilder<ListBloc, ListState>(
          builder: (context, state) => state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (list, groupValue) => Column(
                  children: [
                    if (listName == cMyReadingListName) ...[
                      CupertinoSegmentedControl(
                        padding: const EdgeInsets.all(8),
                        borderColor: Colors.blue,
                        selectedColor: Colors.blue,
                        groupValue: EnumToString.convertToString(groupValue),
                        children: {
                          'unread': Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(EnumToString.convertToString(
                                GroupValue.unread)),
                          ),
                          'read': Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                                EnumToString.convertToString(GroupValue.read)),
                          ),
                        },
                        onValueChanged: (newValue) {
                          context.read<ListBloc>()
                            ..add(ListEvent.loadList(
                                listName: listName,
                                groupValue: newValue ==
                                        EnumToString.convertToString(
                                            GroupValue.read)
                                    ? GroupValue.read
                                    : GroupValue.unread));
                        },
                      )
                    ],
                    Expanded(
                      child: ListView.builder(
                          itemCount: list.books.length,
                          itemBuilder: (context, index) {
                            return Slidable(
                              actionPane: const SlidableDrawerActionPane(),
                              actionExtentRatio: 0.25,
                              secondaryActions: <Widget>[
                                if (listName == cMyReadingListName) ...[
                                  IconSlideAction(
                                    caption: groupValue == GroupValue.unread
                                        ? 'Read'
                                        : 'Unread',
                                    color: groupValue == GroupValue.unread
                                        ? Colors.green
                                        : Colors.yellow,
                                    icon: Icons.check,
                                    onTap: () => context.read<ListBloc>()
                                      ..add(ListEvent.readBook(
                                          book: list.books[index],
                                          groupValue: groupValue)),
                                  )
                                ],
                                IconSlideAction(
                                    caption: 'Add To List',
                                    color: Colors.blue,
                                    icon: Icons.add,
                                    onTap: () => {
                                          context.read<ListsBloc>()
                                            ..add(const ListsEvent.loadLists()),
                                          _showDialog(
                                              context: context,
                                              book: list.books[index].toBook(),
                                              onConfirm: () {
                                                context.read<ListBloc>()
                                                  ..add(ListEvent.loadList(
                                                      listName: listName,
                                                      groupValue: groupValue));
                                              })
                                        }),
                                IconSlideAction(
                                  caption: 'Delete',
                                  color: Colors.red,
                                  icon: Icons.delete,
                                  onTap: () => context.read<ListBloc>()
                                    ..add(ListEvent.deleteBookFromList(
                                        book: list.books[index],
                                        groupValue: groupValue)),
                                ),
                              ],
                              child: Container(
                                  color: Colors.white,
                                  child: BookListCell(
                                    book: list.books[index],
                                    onConfirm: () {
                                      context.read<ListBloc>()
                                        ..add(ListEvent.loadList(
                                            listName: listName,
                                            groupValue: groupValue));
                                    },
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
                error: (message) => AnimatedReloadExceptionIndicator(
                  title: "Ups...",
                  heightFactor: 0.21,
                  message: message,
                  onTryAgain: () {
                    context.read<ListBloc>()
                      ..add(ListEvent.loadList(
                          listName: listName, groupValue: GroupValue.unread));
                  },
                ),
              )),
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
      @required void Function() onConfirm}) async {
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
        }).whenComplete(() => onConfirm());
  }
}
