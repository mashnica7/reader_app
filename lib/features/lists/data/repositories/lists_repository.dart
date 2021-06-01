import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/key_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../../search/domain/entities/book.dart';
import '../../domain/entities/book_list.dart';
import '../../domain/entities/read_list.dart';
import '../../domain/repositories/i_lists_repository.dart';
import '../datasources/lists_local_datasource.dart';
import '../datasources/lists_remote_datasource.dart';

@LazySingleton(as: IListsRepository)
class ListsRepository implements IListsRepository {
  final IListsRemoteDataSource remoteDataSource;
  final IListsLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  ListsRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ReadList>>> loadReadLists() async {
    try {
      final readLists = await localDataSource.getReadLists();

      if (readLists.isEmpty) {
        await localDataSource.createList(name: cMyReadingListName);

        final notEmptyReadLists = await localDataSource.getReadLists();

        return right(notEmptyReadLists);
      } else {
        return right(readLists);
      }
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<ReadList>>> createNewList({String name}) async {
    try {
      await localDataSource.createList(name: name);

      final readLists = await localDataSource.getReadLists();

      return right(readLists);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<ReadList>>> updateList(
      {String listName, Book book, bool isAdding}) async {
    try {
      await localDataSource.addOrRemoveBookFromList(
          listName: listName, book: book, isAdding: isAdding);

      final readLists = await localDataSource.getReadLists();

      return right(readLists);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, ReadList>> loadList(
      {String listName, GroupValue groupValue}) async {
    try {
      final readLists = await localDataSource.getReadList(
          listName: listName, groupValue: groupValue);

      return right(readLists);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, ReadList>> readBook(
      {BookList book, GroupValue groupValue}) async {
    try {
      localDataSource.readBook(book: book, groupValue: groupValue);

      final readList = await localDataSource.getReadList(
          listName: book.listName, groupValue: groupValue);

      return right(readList);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, BookList>> loadBook({BookList book}) async {
    try {
      final loadedBook = await localDataSource.loadBook(book: book);

      return right(loadedBook);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, BookList>> addNoteToBook(
      {BookList book, String note}) async {
    try {
      if (note == null || note.isEmpty) {
        throw const CacheFailure(message: cCacheNoNoteeErrorMessage);
      }

      final updatedBook =
          await localDataSource.addNoteToBook(note: note, book: book);

      return right(updatedBook);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, ReadList>> deleteBookFromList(
      {BookList book, GroupValue groupValue}) async {
    try {
      localDataSource.addOrRemoveBookFromList(
          book: book.toBook(), listName: book.listName, isAdding: false);

      final readList = await localDataSource.getReadList(
          listName: book.listName, groupValue: groupValue);

      return right(readList);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }
}
