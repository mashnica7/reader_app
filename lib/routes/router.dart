import 'package:auto_route/auto_route_annotations.dart';

import '../features/lists/presentation/pages/booklist_details_page.dart';
import '../features/lists/presentation/pages/list_page.dart';
import '../features/search/presentation/pages/book_details_page.dart';
import '../features/tabbar/presentation/pages/tab_bar_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: TabBarPage, initial: true),
  MaterialRoute(page: ListPage),
  MaterialRoute(page: BookListDetailsPage),
  MaterialRoute(page: BookDetailsPage),
])
class $Router {}
