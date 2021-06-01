import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/key_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../../search/domain/entities/book.dart';
import '../entities/book_list.dart';
import '../entities/read_list.dart';

abstract class IListsRepository {
  /// ## Load Read Lists
  ///
  /// It loads all created lists from local database
  Future<Either<Failure, List<ReadList>>> loadReadLists();

  /// ## Create New List
  ///
  /// Create new [list] and return [Failure] or [ReadLists]
  Future<Either<Failure, List<ReadList>>> createNewList(
      {@required String name});

  /// ## Update List
  ///
  /// Update list with [listName] by adding or removing [book] from list
  /// Add book to list - [isAdding = true]
  /// Remove book from list - [isAdding = false]
  Future<Either<Failure, List<ReadList>>> updateList(
      {@required String listName,
      @required Book book,
      @required bool isAdding});

  /// ## Load List
  ///
  /// Load list by [listName] and [groupValue - read or unread]
  Future<Either<Failure, ReadList>> loadList(
      {@required String listName, GroupValue groupValue});

  /// ## Read Book
  ///
  /// It makes [book] as read and return updated [ReadList]
  Future<Either<Failure, ReadList>> readBook(
      {@required BookList book, @required GroupValue groupValue});

  // ## Load Book
  ///
  /// It refreshes [book] from local again
  Future<Either<Failure, BookList>> loadBook({@required BookList book});

  // ## Add Note To Book
  ///
  /// It adds [note] to [book] and returns updated [book]
  Future<Either<Failure, BookList>> addNoteToBook(
      {@required String note, @required BookList book});

  // ## Delete Book
  ///
  /// It deletes [book] from list and return updated [BookList]
  Future<Either<Failure, ReadList>> deleteBookFromList(
      {@required BookList book, GroupValue groupValue});
}
