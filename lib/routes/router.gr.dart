// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/lists/domain/entities/book_list.dart';
import '../features/lists/presentation/pages/booklist_details_page.dart';
import '../features/lists/presentation/pages/list_page.dart';
import '../features/search/domain/entities/book.dart';
import '../features/search/presentation/pages/book_details_page.dart';
import '../features/tabbar/presentation/pages/tab_bar_page.dart';

class Routes {
  static const String tabBarPage = '/';
  static const String listPage = '/list-page';
  static const String bookListDetailsPage = '/book-list-details-page';
  static const String bookDetailsPage = '/book-details-page';
  static const all = <String>{
    tabBarPage,
    listPage,
    bookListDetailsPage,
    bookDetailsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.tabBarPage, page: TabBarPage),
    RouteDef(Routes.listPage, page: ListPage),
    RouteDef(Routes.bookListDetailsPage, page: BookListDetailsPage),
    RouteDef(Routes.bookDetailsPage, page: BookDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    TabBarPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TabBarPage(),
        settings: data,
      );
    },
    ListPage: (data) {
      final args = data.getArgs<ListPageArguments>(
        orElse: () => ListPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ListPage(
          key: args.key,
          listName: args.listName,
        ),
        settings: data,
      );
    },
    BookListDetailsPage: (data) {
      final args = data.getArgs<BookListDetailsPageArguments>(
        orElse: () => BookListDetailsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BookListDetailsPage(
          key: args.key,
          book: args.book,
        ),
        settings: data,
      );
    },
    BookDetailsPage: (data) {
      final args = data.getArgs<BookDetailsPageArguments>(
        orElse: () => BookDetailsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BookDetailsPage(
          key: args.key,
          book: args.book,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ListPage arguments holder class
class ListPageArguments {
  final Key key;
  final String listName;
  ListPageArguments({this.key, this.listName});
}

/// BookListDetailsPage arguments holder class
class BookListDetailsPageArguments {
  final Key key;
  final BookList book;
  BookListDetailsPageArguments({this.key, this.book});
}

/// BookDetailsPage arguments holder class
class BookDetailsPageArguments {
  final Key key;
  final Book book;
  BookDetailsPageArguments({this.key, this.book});
}
