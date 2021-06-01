import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'features/lists/presentation/bloc/list/list_bloc.dart';
import 'features/lists/presentation/bloc/lists/lists_bloc.dart';
import 'injection/injection.dart';
import 'routes/router.gr.dart' as router;

Future<void> main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListsBloc>(
            create: (BuildContext context) => getIt<ListsBloc>()),
        BlocProvider<ListBloc>(
            create: (BuildContext context) => getIt<ListBloc>()),
      ],
      child: MaterialApp(
        title: 'Reader App',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: router.Router()),
      ),
    );
  }
}
