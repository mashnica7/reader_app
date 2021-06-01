import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISearchLocalDataSource {}

@LazySingleton(as: ISearchLocalDataSource)
class SearchLocalDataSource implements ISearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  SearchLocalDataSource({@required this.sharedPreferences});
}
