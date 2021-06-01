import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/utils/error_utils.dart';
import '../../domain/entities/books.dart';

abstract class ISearchRemoteDataSource {
  /// Calls the http://openlibrary.org/search.json endpoint
  /// with [searchString] and [page] - number of page
  ///
  /// Return [Books] for success response or
  /// throws [ServerFailure] for all error codes
  Future<Books> searchBooks({
    @required String searchString,
    int page,
  });
}

@LazySingleton(as: ISearchRemoteDataSource)
class SearchRemoteDataSource implements ISearchRemoteDataSource {
  final Api api;

  SearchRemoteDataSource({
    @required this.api,
  });

  @override
  // ignore: missing_return
  Future<Books> searchBooks({String searchString, int page}) async {
    /// In case of comma (,) in [searchString] - split to array of two element, add [q] and [author] params to base url
    /// First element in array represents [q] - title of book
    /// Second element in array represents [author] - author name
    String newSearchString = '$cSearchEndpoint?';
    if (searchString.contains(',')) {
      final List<String> list = searchString.split(',');
      if (list.length > 1 && list[0].isNotEmpty && list[0].isNotEmpty) {
        final encodedTitle = Uri.encodeQueryComponent(list[0]);
        newSearchString += 'q=$encodedTitle';
        final encodedAuthorName = Uri.encodeQueryComponent(list[1]);
        newSearchString += '&author=$encodedAuthorName';
      }
    } else {
      final encodedTitle = Uri.encodeQueryComponent(searchString);
      newSearchString += 'q=$encodedTitle';
    }

    /// in case [page] is not set or 0 - set [newPage] to 1
    final int newPage = page == null || page == 0 ? 1 : page;

    newSearchString += '&page=$newPage';

    try {
      final response = await api.getRequest(newSearchString);
      final books = Books.fromJson(response.data as Map<String, dynamic>);

      return books;
    } catch (error) {
      ErrorUtils.remoteErrorHandling(error);
    }
  }
}
