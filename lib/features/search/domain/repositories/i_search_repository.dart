import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../entities/books.dart';

abstract class ISearchRepository {
  /// ## Search Books
  ///
  /// Search books from Open Library by [searchString]
  /// It is return Either [Failure or Books]
  Future<Either<Failure, Books>> searchBooks(
      {@required String searchString, int page});
}
