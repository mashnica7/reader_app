// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookList _$_$_BookListFromJson(Map<String, dynamic> json) {
  return _$_BookList(
    listName: json['list_name'] as String,
    key: json['key'] as String,
    title: json['title'] as String,
    coverI: json['cover_i'] as int,
    firstSentence: json['first_sentence'] as String,
    publishYear: json['publish_year'] as String,
    authorName: json['author_name'] as String,
    publisher: json['publisher'] as String,
    isRead: json['is_read'] as int,
    notes: json['notes'] as String,
  );
}

Map<String, dynamic> _$_$_BookListToJson(_$_BookList instance) =>
    <String, dynamic>{
      'list_name': instance.listName,
      'key': instance.key,
      'title': instance.title,
      'cover_i': instance.coverI,
      'first_sentence': instance.firstSentence,
      'publish_year': instance.publishYear,
      'author_name': instance.authorName,
      'publisher': instance.publisher,
      'is_read': instance.isRead,
      'notes': instance.notes,
    };
