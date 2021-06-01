import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api.dart';

abstract class IListsRemoteDataSource {}

@LazySingleton(as: IListsRemoteDataSource)
class ListsRemoteDataSource implements IListsRemoteDataSource {
  final Api api;

  ListsRemoteDataSource({
    @required this.api,
  });
}
