// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadList _$_$_ReadListFromJson(Map<String, dynamic> json) {
  return _$_ReadList(
    name: json['name'] as String,
    books: (json['books'] as List)
        ?.map((e) =>
            e == null ? null : BookList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ReadListToJson(_$_ReadList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'books': instance.books,
    };
