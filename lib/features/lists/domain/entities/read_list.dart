import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'book_list.dart';

part 'read_list.freezed.dart';
part 'read_list.g.dart';

@freezed
abstract class ReadList implements _$ReadList {
  const ReadList._();

  const factory ReadList({
    String name,
    List<BookList> books,
  }) = _ReadList;

  factory ReadList.fromJson(Map<String, dynamic> json) =>
      _$ReadListFromJson(json);

  Map<String, dynamic> toDBJson() {
    return {'name': name};
  }
}
