// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../core/api/api.dart' as _i8;
import '../core/database/mdatabase.dart' as _i6;
import '../core/platform/network_info.dart' as _i5;
import '../features/lists/data/datasources/lists_local_datasource.dart' as _i9;
import '../features/lists/data/datasources/lists_remote_datasource.dart'
    as _i10;
import '../features/lists/data/repositories/lists_repository.dart' as _i12;
import '../features/lists/domain/repositories/i_lists_repository.dart' as _i11;
import '../features/lists/presentation/bloc/book_details/book_details_bloc.dart'
    as _i20;
import '../features/lists/presentation/bloc/list/list_bloc.dart' as _i17;
import '../features/lists/presentation/bloc/lists/lists_bloc.dart' as _i18;
import '../features/search/data/datasources/search_local_datasource.dart'
    as _i13;
import '../features/search/data/datasources/search_remote_datasource.dart'
    as _i14;
import '../features/search/data/repositories/search_repository.dart' as _i16;
import '../features/search/domain/repositories/i_search_repository.dart'
    as _i15;
import '../features/search/presentation/bloc/search_bloc.dart' as _i19;
import 'injectable_moduls.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.Connectivity>(() => injectableModules.connectivity);
  gh.lazySingleton<_i4.Dio>(() => injectableModules.dio);
  gh.lazySingleton<_i5.INetworkInfo>(
      () => _i5.NetworkInfo(get<_i3.Connectivity>()));
  gh.lazySingleton<_i6.MDatabase>(() => _i6.MDatabase());
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i8.Api>(() => _i8.Api(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i9.IListsLocalDataSource>(() => _i9.ListsLocalDataSource(
      database: get<_i6.MDatabase>(),
      sharedPreferences: get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i10.IListsRemoteDataSource>(
      () => _i10.ListsRemoteDataSource(api: get<_i8.Api>()));
  gh.lazySingleton<_i11.IListsRepository>(() => _i12.ListsRepository(
      remoteDataSource: get<_i10.IListsRemoteDataSource>(),
      localDataSource: get<_i9.IListsLocalDataSource>(),
      networkInfo: get<_i5.INetworkInfo>()));
  gh.lazySingleton<_i13.ISearchLocalDataSource>(() =>
      _i13.SearchLocalDataSource(
          sharedPreferences: get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i14.ISearchRemoteDataSource>(
      () => _i14.SearchRemoteDataSource(api: get<_i8.Api>()));
  gh.lazySingleton<_i15.ISearchRepository>(() => _i16.SearchRepository(
      remoteDataSource: get<_i14.ISearchRemoteDataSource>(),
      localDataSource: get<_i13.ISearchLocalDataSource>(),
      networkInfo: get<_i5.INetworkInfo>()));
  gh.factory<_i17.ListBloc>(
      () => _i17.ListBloc(listsRepository: get<_i11.IListsRepository>()));
  gh.factory<_i18.ListsBloc>(
      () => _i18.ListsBloc(listsRepository: get<_i11.IListsRepository>()));
  gh.factory<_i19.SearchBloc>(
      () => _i19.SearchBloc(searchRepository: get<_i15.ISearchRepository>()));
  gh.factory<_i20.BookDetailsBloc>(() =>
      _i20.BookDetailsBloc(listsRepository: get<_i11.IListsRepository>()));
  return get;
}

class _$InjectableModules extends _i21.InjectableModules {}
