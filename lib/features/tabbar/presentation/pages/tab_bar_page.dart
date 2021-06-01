import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/key_constants.dart';
import '../../../lists/data/datasources/lists_local_datasource.dart';
import '../../../lists/presentation/bloc/list/list_bloc.dart';
import '../../../lists/presentation/bloc/lists/lists_bloc.dart';
import '../../../lists/presentation/pages/list_page.dart';
import '../../../lists/presentation/pages/lists_page.dart';
import '../../../search/presentation/pages/search_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int _currentIndex;
  List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _currentIndex = 1;
    context.read<ListBloc>()
      ..add(const ListEvent.loadList(
          listName: cMyReadingListName, groupValue: GroupValue.unread));
    _children = [
      const ListsPage(),
      const ListPage(listName: cMyReadingListName),
      SearchPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            context.read<ListsBloc>()..add(const ListsEvent.loadLists());
          }
          if (index == 1) {
            context.read<ListBloc>()
              ..add(const ListEvent.loadList(
                  listName: cMyReadingListName, groupValue: GroupValue.unread));
          }
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lists',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'My Reading List'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
        ],
      ),
    );
  }
}
