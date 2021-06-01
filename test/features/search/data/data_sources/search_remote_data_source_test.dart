import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:reader_app/core/api/api.dart';
import 'package:dio/dio.dart' as dio;
import 'package:reader_app/core/api/endpoints.dart';
import 'package:reader_app/core/errors/failures.dart';

import 'package:reader_app/features/search/data/datasources/search_remote_datasource.dart';
import 'package:reader_app/features/search/domain/entities/book.dart';
import 'package:reader_app/features/search/domain/entities/books.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockDio extends Mock implements dio.Dio {}

main() {
  MockDio mockDio;
  Api api;
  SearchRemoteDataSource remoteDataSource;

  setUp(() {
    mockDio = MockDio();

    api = Api(dio: mockDio);
    remoteDataSource = SearchRemoteDataSource(api: api);
  });

  group('searchBooks', () {
    final List<Book> tBookLists = [
      const Book(
          key: 'key1',
          title: 'Title 1',
          coverI: 1,
          authorName: "Author Name 1\nAuthor Name 2",
          firstSentence: "First Sentence 1\nSecond Sentace",
          publishYear: "2001\n2002",
          publisher: "Publisher 1\nPublisher2"),
    ];
    final Books tBooks = Books(numFound: 1, books: tBookLists);
    const String tSearchString = 'title';
    const int tPage = 1;
    // const ServerFailure tServerFailure =
    //     ServerFailure(message: cSomethingWentWrongMessage);

    void setupSearchBooksMockDioSuccess200() {
      // when(api.addInterceptors()).thenAnswer((_) async => dio.Response(
      //     data: json.decode(fixture('books.json')), statusCode: HttpStatus.ok));
      when(mockDio.get(any)).thenAnswer((_) async => dio.Response(
          data: json.decode(fixture('books.json')), statusCode: HttpStatus.ok));
    }

    test('should perform GET request with Search Book endpoint', () async {
      // arrange
      setupSearchBooksMockDioSuccess200();
      // act
      await remoteDataSource.searchBooks(
          searchString: tSearchString, page: tPage);
      // assert
      verify(mockDio.get('$cSearchEndpoint?q=$tSearchString&page=1'));
    });

    test(
      'should return Books when there is data available',
      () async {
        //arrange:
        setupSearchBooksMockDioSuccess200();
        //act:
        final result = await remoteDataSource.searchBooks(
            searchString: tSearchString, page: tPage);
        //assert:
        expect(result, tBooks);
      },
    );

    test(
      'should throw a ServerFailure when something goes wrong (e.g. 404 == notFound)',
      () async {
        //arrange:
        when(mockDio.get(any)).thenAnswer((_) async => dio.Response(
            data: 'something went wrong', statusCode: HttpStatus.notFound));
        //act:
        final call = remoteDataSource.searchBooks;
        //assert:
        expect(() => call(searchString: tSearchString, page: tPage),
            throwsA(isInstanceOf<ServerFailure>()));
      },
    );
  });
}
