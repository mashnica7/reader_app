// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Books _$_$_BooksFromJson(Map<String, dynamic> json) {
  return _$_Books(
    numFound: json['numFound'] as int,
    books: (json['docs'] as List)
        ?.map(
            (e) => e == null ? null : Book.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_BooksToJson(_$_Books instance) => <String, dynamic>{
      'numFound': instance.numFound,
      'docs': instance.books,
    };
