import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'book.dart';

part 'books.freezed.dart';
part 'books.g.dart';

@freezed
abstract class Books implements _$Books {
  const Books._();

  const factory Books({
    @JsonKey(name: 'numFound') int numFound,
    @JsonKey(name: 'docs') List<Book> books,
  }) = _Books;

  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);
}
