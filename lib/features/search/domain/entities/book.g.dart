// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$_$_BookFromJson(Map<String, dynamic> json) {
  return _$_Book(
    key: json['key'] as String,
    title: json['title'] as String,
    coverI: json['cover_i'] as int,
    firstSentence: json['first_sentence'] as String,
    publishYear: json['publish_year'] as String,
    authorName: json['author_name'] as String,
    publisher: json['publisher'] as String,
  );
}

Map<String, dynamic> _$_$_BookToJson(_$_Book instance) => <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'cover_i': instance.coverI,
      'first_sentence': instance.firstSentence,
      'publish_year': instance.publishYear,
      'author_name': instance.authorName,
      'publisher': instance.publisher,
    };
