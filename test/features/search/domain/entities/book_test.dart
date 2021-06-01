import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reader_app/features/search/domain/entities/book.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  group('fromJson', () {
    test('should return valid entity from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('books.json')) as Map<String, dynamic>;
      // act
      final result = Book.fromJson(jsonMap['docs'][0] as Map<String, dynamic>);
      // assert
      expect(result, tBook);
    });
  });
}

const tBook = Book(
    key: 'key1',
    title: 'Title 1',
    coverI: 1,
    authorName: 'Author Name 1\nAuthor Name 2',
    firstSentence: 'First Sentence 1\nSecond Sentace',
    publishYear: '2001\n2002',
    publisher: 'Publisher 1\nPublisher2');
