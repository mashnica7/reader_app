import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reader_app/core/constants/text_constants.dart';
import 'package:reader_app/core/errors/failures.dart';

import 'package:reader_app/core/platform/network_info.dart';
import 'package:reader_app/features/search/data/datasources/search_local_datasource.dart';
import 'package:reader_app/features/search/data/datasources/search_remote_datasource.dart';
import 'package:reader_app/features/search/data/repositories/search_repository.dart';
import 'package:reader_app/features/search/domain/entities/book.dart';
import 'package:reader_app/features/search/domain/entities/books.dart';

class MockRemoteDataSource extends Mock implements ISearchRemoteDataSource {}

class MockLocalDataSource extends Mock implements ISearchLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  SearchRepository repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();

    repository = SearchRepository(
        remoteDataSource: mockRemoteDataSource,
        localDataSource: mockLocalDataSource,
        networkInfo: mockNetworkInfo);
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  group('searchBooks', () {
    final List<Book> tBookLists = [
      const Book(
          key: 'key1',
          title: 'Title 1',
          coverI: 1,
          authorName: 'Author Name 1',
          firstSentence: 'First Sentence 1',
          publishYear: '2001',
          publisher: 'Publisher 1'),
      const Book(
          key: 'key2',
          title: 'Title 2',
          coverI: 2,
          authorName: 'Author Name 2',
          firstSentence: 'First Sentence 2',
          publishYear: '2002',
          publisher: 'Publisher 2')
    ];
    final Books tBooks = Books(numFound: 2, books: tBookLists);
    const String tSearchString = 'title';
    const int tPage = 1;
    const ServerFailure tServerFailure =
        ServerFailure(message: cSomethingWentWrongMessage);
    test(
      'should check if the device is online',
      () async {
        // arrange
        // when mockNetworkInfo calls isConnected method return true:
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        // act
        repository.searchBooks(searchString: tSearchString, page: tPage);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    runTestsOnline(() {
      test(
          'should return remote data when call to remote data source is successful',
          () async {
        // arrange
        when(mockRemoteDataSource.searchBooks(
                searchString: anyNamed('searchString'), page: anyNamed('page')))
            .thenAnswer((_) async => tBooks);
        // act
        final result = await repository.searchBooks(
            searchString: tSearchString, page: tPage);
        // assert
        verify(mockRemoteDataSource.searchBooks(
            searchString: tSearchString, page: tPage));
        expect(result, equals(Right(tBooks)));
      });

      test(
          'should return sever failure when call to remote data source is unsuccessful',
          () async {
        // arrange
        when(mockRemoteDataSource.searchBooks(
                searchString: anyNamed('searchString'), page: anyNamed('page')))
            .thenThrow(tServerFailure);
        // act
        final result = await repository.searchBooks(
            searchString: tSearchString, page: tPage);
        // assert
        verify(mockRemoteDataSource.searchBooks(
            searchString: tSearchString, page: tPage));
        expect(
            result,
            equals(const Left(
                ServerFailure(message: cSomethingWentWrongMessage))));
      });
    });
  });
}
