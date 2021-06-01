import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../lists/domain/entities/book_list.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book implements _$Book {
  const Book._();

  const factory Book({
    String key,
    String title,
    int coverI,
    String firstSentence,
    String publishYear,
    String authorName,
    String publisher,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        key: json['key'] as String,
        title: json['title'] as String,
        coverI: json['cover_i'] as int,
        firstSentence: json['first_sentence']?.join("\n") as String,
        publishYear: json['publish_year']?.join("\n") as String,
        authorName: json['author_name']?.join("\n") as String,
        publisher: json['publisher']?.join("\n") as String,
      );

  factory Book.fromDBJson(Map<String, dynamic> json) => Book(
        key: json['key'] as String,
        title: json['title'] as String,
        coverI: json['cover_i'] as int,
        firstSentence: json['first_sentence'] as String,
        publishYear: json['publish_year'] as String,
        authorName: json['author_name'] as String,
        publisher: json['publisher'] as String,
      );

  BookList toBookList() => BookList(
        key: key,
        title: title,
        coverI: coverI,
        firstSentence: firstSentence,
        publishYear: publishYear,
        authorName: authorName,
        publisher: publisher,
      );
}
