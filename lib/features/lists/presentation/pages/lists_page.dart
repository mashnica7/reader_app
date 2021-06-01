import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/key_constants.dart';
import '../../../../core/ui/widgets/animated_reload_error_indicator.dart';
import '../../../../routes/router.gr.dart';
import '../../../search/domain/entities/book.dart';
import '../../domain/entities/read_list.dart';
import '../bloc/list/list_bloc.dart';
import '../bloc/lists/lists_bloc.dart';

class ListsPage extends StatelessWidget {
  final Book book;

  const ListsPage({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: book != null
              ? IconButton(
                  icon: const Icon(Icons.close),
                  tooltip: 'Add new list',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : Container(),
          title: const Text('Lists'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Add new list',
              onPressed: () {
                _showDialog(
                    context: context,
                    labelText: 'List name',
                    icon: Icons.list_alt,
                    onConfirm: (value) {
                      context
                          .read<ListsBloc>()
                          .add(ListsEvent.createList(name: value));
                    });
              },
            ),
          ],
        ),
        body: BlocBuilder<ListsBloc, ListsState>(
            builder: (context, state) => state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (lists) => ListView.builder(
                      itemCount: lists.length,
                      itemBuilder: (context, index) {
                        final ReadList readList = lists[index];
                        if (book != null) {
                          if (readList.books.firstWhere(
                                  (b) => b.key == book.key,
                                  orElse: () => null) !=
                              null) {
                            return ListTile(
                                leading: const Icon(Icons.book),
                                title: Text(readList.name),
                                onTap: () => context.read<ListsBloc>()
                                  ..add(ListsEvent.updateList(
                                      listName: readList.name,
                                      book: book,
                                      isAdding: false)),
                                trailing: const Icon(
                                  Icons.check_outlined,
                                  color: Colors.blue,
                                  size: 30,
                                ));
                          } else {
                            return ListTile(
                              leading: const Icon(Icons.book),
                              onTap: () => context.read<ListsBloc>()
                                ..add(ListsEvent.updateList(
                                    listName: readList.name,
                                    book: book,
                                    isAdding: true)),
                              title: Text(readList.name),
                            );
                          }
                        } else {
                          return ListTile(
                            leading: const Icon(
                              Icons.list_alt,
                              color: Colors.blue,
                            ),
                            onTap: () {
                              context.read<ListBloc>()
                                ..add(ListEvent.loadList(
                                    listName: readList.name,
                                    groupValue: GroupValue.unread));
                              ExtendedNavigator.of(context).push(
                                  Routes.listPage,
                                  arguments: ListPageArguments(
                                      listName: readList.name));
                            },
                            title: Text(readList.name),
                            trailing: const Icon(Icons.keyboard_arrow_right),
                          );
                        }
                      }),
                  error: (message) => AnimatedReloadExceptionIndicator(
                    title: "Ups...",
                    heightFactor: 0.21,
                    message: message,
                    onTryAgain: () {
                      context.read<ListsBloc>()
                        ..add(const ListsEvent.loadLists());
                    },
                  ),
                )));
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
              'Create',
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
