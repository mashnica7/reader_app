import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../search/domain/entities/book.dart';

part 'book_list.freezed.dart';
part 'book_list.g.dart';

@freezed
abstract class BookList implements _$BookList {
  const BookList._();

  const factory BookList({
    String listName,
    String key,
    String title,
    int coverI,
    String firstSentence,
    String publishYear,
    String authorName,
    String publisher,
    int isRead,
    String notes,
  }) = _BookList;

  factory BookList.fromJson(Map<String, dynamic> json) =>
      _$BookListFromJson(json);

  Book toBook() => Book(
        key: key,
        title: title,
        coverI: coverI,
        firstSentence: firstSentence,
        publishYear: publishYear,
        authorName: authorName,
        publisher: publisher,
      );
}
