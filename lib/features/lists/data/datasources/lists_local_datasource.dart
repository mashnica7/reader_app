import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/constants/key_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/database/mdatabase.dart';
import '../../../../core/errors/failures.dart';
import '../../../search/domain/entities/book.dart';
import '../../domain/entities/book_list.dart';
import '../../domain/entities/read_list.dart';

const cReadListsKey = 'cReadListsKey';
const cMyReadingListName = 'My Reading List';

abstract class IListsLocalDataSource {
  /// ## Get Read Lists
  ///
  /// It gets all created [ReadLists]
  /// It returns [CacheFailure] in case of error.
  Future<List<ReadList>> getReadLists();

  /// ## Create list
  ///
  /// Create list with [name] and return [ReadList]
  /// It returns [CacheFailure] in case of error.
  Future<ReadList> createList({@required String name});

  /// Add Or Remove Book from list
  Future<bool> addOrRemoveBookFromList(
      {@required Book book,
      @required String listName,
      @required bool isAdding});

  /// ## Get Read List
  ///
  /// It gets [ReadList] by [lastName] and [isReadingBook]
  /// [groupValue] - enum that represent if book is read
  /// It returns [CacheFailure] in case of error.
  Future<ReadList> getReadList({String listName, GroupValue groupValue});

  /// ## Read/Unread Book
  ///
  /// It updates [book] as read/unread depend on [groupValue]
  Future<bool> readBook({BookList book, GroupValue groupValue});

  /// ## Load Book
  ///
  /// It loads [book] from database
  /// It returns [CacheFailure] in case of error.
  Future<BookList> loadBook({BookList book});

  /// ## Add Note to Book
  ///
  /// It adds [note] to [book] and returns updated [book]
  /// It returns [CacheFailure] in case of error.
  Future<BookList> addNoteToBook({String note, BookList book});
}

@LazySingleton(as: IListsLocalDataSource)
class ListsLocalDataSource implements IListsLocalDataSource {
  final SharedPreferences sharedPreferences;
  final MDatabase database;

  ListsLocalDataSource({
    @required this.database,
    @required this.sharedPreferences,
  });

  @override
  Future<List<ReadList>> getReadLists() async {
    try {
      // Get a reference to the database.
      final db = await database.db;

      // Query the table for all data
      final List<Map<String, dynamic>> mapsOfRLs = await db.query("read_lists");

      // Convert the List<Map<String, dynamic> into a List<ReadList>.
      final List<ReadList> listRLs = List.generate(mapsOfRLs.length, (i) {
        return ReadList.fromJson(mapsOfRLs[i]);
      });

      // Query the table for all data
      final List<Map<String, dynamic>> mapsOfBooks =
          await db.query("book_list");

      // Convert the List<Map<String, dynamic> into a List<BookList>.
      final List<BookList> listBooks = List.generate(mapsOfBooks.length, (i) {
        return BookList.fromJson(mapsOfBooks[i]);
      });

      final List<ReadList> newRLs = [];
      for (final ReadList rl in listRLs) {
        final List<BookList> foundBL =
            listBooks.where((element) => element.listName == rl.name).toList();
        newRLs.add(rl.copyWith(books: foundBL));
      }

      return newRLs;
    } catch (e) {
      throw const CacheFailure(message: cCacheDataErrorMessage);
    }
  }

  @override
  Future<ReadList> createList({String name}) async {
    try {
      if (name == null || name.isEmpty) {
        throw const CacheFailure(message: cCacheNoListNameErrorMessage);
      }

      // Get a reference to the database.
      final db = await database.db;

      // Query the table for Read list with name
      final List<Map<String, dynamic>> maps =
          await db.query('read_lists', where: 'name = ?', whereArgs: [name]);

      if (maps.isNotEmpty) {
        throw const CacheFailure(message: cCacheDataExistErrorMessage);
      } else {
        final newReadList = ReadList(name: name);

        final inserted = await db.insert('read_lists', newReadList.toDBJson());

        if (inserted == 0) {
          throw const CacheFailure(message: cCacheDataErrorMessage);
        }

        return newReadList;
      }
    } catch (e) {
      if (e is CacheFailure) {
        rethrow;
      } else {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    }
  }

  @override
  Future<bool> addOrRemoveBookFromList(
      {Book book, String listName, bool isAdding}) async {
    try {
      // Get a reference to the database.
      final db = await database.db;
      if (isAdding == true) {
        final insertedBL = await db.insert(
          'book_list',
          book
              .toBookList()
              .copyWith(
                  listName: listName,
                  isRead: listName == cMyReadingListName ? 0 : 1)
              .toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );

        if (insertedBL == 0) {
          throw const CacheFailure(message: cCacheDataErrorMessage);
        }
        return true;
      } else {
        final deletedBookList = await db.delete('book_list',
            where: 'key = ? AND list_name = ?',
            whereArgs: [book.key, listName]);

        if (deletedBookList == 0) {
          throw const CacheFailure(message: cCacheDataErrorMessage);
        }
        return true;
      }
    } catch (e) {
      if (e is CacheFailure) {
        rethrow;
      } else {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    }
  }

  @override
  Future<ReadList> getReadList({String listName, GroupValue groupValue}) async {
    try {
      final int isReadingBook = (listName != cMyReadingListName)
          ? null
          : groupValue != null
              ? groupValue == GroupValue.read
                  ? 1
                  : 0
              : null;
      // Get a reference to the database.
      final db = await database.db;

      // Query the table for all data
      final List<Map<String, dynamic>> mapsOfBooks = (isReadingBook == null)
          ? await db
              .query("book_list", where: 'list_name = ?', whereArgs: [listName])
          : await db.query("book_list",
              where: 'list_name = ? AND is_read = ?',
              whereArgs: [listName, isReadingBook]);

      // Convert the List<Map<String, dynamic> into a List<BookList>.
      final List<BookList> listBooks = List.generate(mapsOfBooks.length, (i) {
        return BookList.fromJson(mapsOfBooks[i]);
      });

      return ReadList(books: listBooks, name: listName);
    } catch (e) {
      if (e is CacheFailure) {
        rethrow;
      } else {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    }
  }

  @override
  Future<bool> readBook({BookList book, GroupValue groupValue}) async {
    try {
      final BookList bookToUpdate =
          book.copyWith(isRead: groupValue == GroupValue.unread ? 1 : 0);

      // Get a reference to the database.
      final db = await database.db;
      final updatedBL = await db.update('book_list', bookToUpdate.toJson(),
          where: 'key = ? AND list_name = ?',
          whereArgs: [bookToUpdate.key, bookToUpdate.listName]);

      if (updatedBL == 0) {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
      return true;
    } catch (e) {
      if (e is CacheFailure) {
        rethrow;
      } else {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    }
  }

  @override
  Future<BookList> loadBook({BookList book}) async {
    try {
      // Get a reference to the database.
      final db = await database.db;
      final mapsOfBooks = await db.query('book_list',
          where: 'key = ? AND list_name = ?',
          whereArgs: [book.key, book.listName]);

      // Convert the List<Map<String, dynamic> into a List<BookList>.
      final List<BookList> listBooks = List.generate(mapsOfBooks.length, (i) {
        return BookList.fromJson(mapsOfBooks[i]);
      });

      return listBooks.first;
    } on Exception {
      throw const CacheFailure(message: cCacheDataErrorMessage);
    }
  }

  @override
  Future<BookList> addNoteToBook({String note, BookList book}) async {
    try {
      final BookList bookToUpdate = book.copyWith(
          notes: book.notes != null ? '${book.notes};;$note' : note);

      // Get a reference to the database.
      final db = await database.db;
      final updatedBL = await db.update('book_list', bookToUpdate.toJson(),
          where: 'key = ? AND list_name = ?',
          whereArgs: [bookToUpdate.key, bookToUpdate.listName]);

      if (updatedBL == 0) {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
      return bookToUpdate;
    } on Exception {
      throw const CacheFailure(message: cCacheDataErrorMessage);
    }
  }
}
