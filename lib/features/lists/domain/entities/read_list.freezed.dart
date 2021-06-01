// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'read_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReadList _$ReadListFromJson(Map<String, dynamic> json) {
  return _ReadList.fromJson(json);
}

/// @nodoc
class _$ReadListTearOff {
  const _$ReadListTearOff();

// ignore: unused_element
  _ReadList call({String name, List<BookList> books}) {
    return _ReadList(
      name: name,
      books: books,
    );
  }

// ignore: unused_element
  ReadList fromJson(Map<String, Object> json) {
    return ReadList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReadList = _$ReadListTearOff();

/// @nodoc
mixin _$ReadList {
  String get name;
  List<BookList> get books;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReadListCopyWith<ReadList> get copyWith;
}

/// @nodoc
abstract class $ReadListCopyWith<$Res> {
  factory $ReadListCopyWith(ReadList value, $Res Function(ReadList) then) =
      _$ReadListCopyWithImpl<$Res>;
  $Res call({String name, List<BookList> books});
}

/// @nodoc
class _$ReadListCopyWithImpl<$Res> implements $ReadListCopyWith<$Res> {
  _$ReadListCopyWithImpl(this._value, this._then);

  final ReadList _value;
  // ignore: unused_field
  final $Res Function(ReadList) _then;

  @override
  $Res call({
    Object name = freezed,
    Object books = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      books: books == freezed ? _value.books : books as List<BookList>,
    ));
  }
}

/// @nodoc
abstract class _$ReadListCopyWith<$Res> implements $ReadListCopyWith<$Res> {
  factory _$ReadListCopyWith(_ReadList value, $Res Function(_ReadList) then) =
      __$ReadListCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<BookList> books});
}

/// @nodoc
class __$ReadListCopyWithImpl<$Res> extends _$ReadListCopyWithImpl<$Res>
    implements _$ReadListCopyWith<$Res> {
  __$ReadListCopyWithImpl(_ReadList _value, $Res Function(_ReadList) _then)
      : super(_value, (v) => _then(v as _ReadList));

  @override
  _ReadList get _value => super._value as _ReadList;

  @override
  $Res call({
    Object name = freezed,
    Object books = freezed,
  }) {
    return _then(_ReadList(
      name: name == freezed ? _value.name : name as String,
      books: books == freezed ? _value.books : books as List<BookList>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReadList extends _ReadList {
  const _$_ReadList({this.name, this.books}) : super._();

  factory _$_ReadList.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadListFromJson(json);

  @override
  final String name;
  @override
  final List<BookList> books;

  @override
  String toString() {
    return 'ReadList(name: $name, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadList &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$ReadListCopyWith<_ReadList> get copyWith =>
      __$ReadListCopyWithImpl<_ReadList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadListToJson(this);
  }
}

abstract class _ReadList extends ReadList {
  const _ReadList._() : super._();
  const factory _ReadList({String name, List<BookList> books}) = _$_ReadList;

  factory _ReadList.fromJson(Map<String, dynamic> json) = _$_ReadList.fromJson;

  @override
  String get name;
  @override
  List<BookList> get books;
  @override
  @JsonKey(ignore: true)
  _$ReadListCopyWith<_ReadList> get copyWith;
}
