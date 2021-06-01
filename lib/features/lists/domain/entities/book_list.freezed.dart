// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookList _$BookListFromJson(Map<String, dynamic> json) {
  return _BookList.fromJson(json);
}

/// @nodoc
class _$BookListTearOff {
  const _$BookListTearOff();

// ignore: unused_element
  _BookList call(
      {String listName,
      String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher,
      int isRead,
      String notes}) {
    return _BookList(
      listName: listName,
      key: key,
      title: title,
      coverI: coverI,
      firstSentence: firstSentence,
      publishYear: publishYear,
      authorName: authorName,
      publisher: publisher,
      isRead: isRead,
      notes: notes,
    );
  }

// ignore: unused_element
  BookList fromJson(Map<String, Object> json) {
    return BookList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BookList = _$BookListTearOff();

/// @nodoc
mixin _$BookList {
  String get listName;
  String get key;
  String get title;
  int get coverI;
  String get firstSentence;
  String get publishYear;
  String get authorName;
  String get publisher;
  int get isRead;
  String get notes;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BookListCopyWith<BookList> get copyWith;
}

/// @nodoc
abstract class $BookListCopyWith<$Res> {
  factory $BookListCopyWith(BookList value, $Res Function(BookList) then) =
      _$BookListCopyWithImpl<$Res>;
  $Res call(
      {String listName,
      String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher,
      int isRead,
      String notes});
}

/// @nodoc
class _$BookListCopyWithImpl<$Res> implements $BookListCopyWith<$Res> {
  _$BookListCopyWithImpl(this._value, this._then);

  final BookList _value;
  // ignore: unused_field
  final $Res Function(BookList) _then;

  @override
  $Res call({
    Object listName = freezed,
    Object key = freezed,
    Object title = freezed,
    Object coverI = freezed,
    Object firstSentence = freezed,
    Object publishYear = freezed,
    Object authorName = freezed,
    Object publisher = freezed,
    Object isRead = freezed,
    Object notes = freezed,
  }) {
    return _then(_value.copyWith(
      listName: listName == freezed ? _value.listName : listName as String,
      key: key == freezed ? _value.key : key as String,
      title: title == freezed ? _value.title : title as String,
      coverI: coverI == freezed ? _value.coverI : coverI as int,
      firstSentence: firstSentence == freezed
          ? _value.firstSentence
          : firstSentence as String,
      publishYear:
          publishYear == freezed ? _value.publishYear : publishYear as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      isRead: isRead == freezed ? _value.isRead : isRead as int,
      notes: notes == freezed ? _value.notes : notes as String,
    ));
  }
}

/// @nodoc
abstract class _$BookListCopyWith<$Res> implements $BookListCopyWith<$Res> {
  factory _$BookListCopyWith(_BookList value, $Res Function(_BookList) then) =
      __$BookListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String listName,
      String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher,
      int isRead,
      String notes});
}

/// @nodoc
class __$BookListCopyWithImpl<$Res> extends _$BookListCopyWithImpl<$Res>
    implements _$BookListCopyWith<$Res> {
  __$BookListCopyWithImpl(_BookList _value, $Res Function(_BookList) _then)
      : super(_value, (v) => _then(v as _BookList));

  @override
  _BookList get _value => super._value as _BookList;

  @override
  $Res call({
    Object listName = freezed,
    Object key = freezed,
    Object title = freezed,
    Object coverI = freezed,
    Object firstSentence = freezed,
    Object publishYear = freezed,
    Object authorName = freezed,
    Object publisher = freezed,
    Object isRead = freezed,
    Object notes = freezed,
  }) {
    return _then(_BookList(
      listName: listName == freezed ? _value.listName : listName as String,
      key: key == freezed ? _value.key : key as String,
      title: title == freezed ? _value.title : title as String,
      coverI: coverI == freezed ? _value.coverI : coverI as int,
      firstSentence: firstSentence == freezed
          ? _value.firstSentence
          : firstSentence as String,
      publishYear:
          publishYear == freezed ? _value.publishYear : publishYear as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      isRead: isRead == freezed ? _value.isRead : isRead as int,
      notes: notes == freezed ? _value.notes : notes as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BookList extends _BookList {
  const _$_BookList(
      {this.listName,
      this.key,
      this.title,
      this.coverI,
      this.firstSentence,
      this.publishYear,
      this.authorName,
      this.publisher,
      this.isRead,
      this.notes})
      : super._();

  factory _$_BookList.fromJson(Map<String, dynamic> json) =>
      _$_$_BookListFromJson(json);

  @override
  final String listName;
  @override
  final String key;
  @override
  final String title;
  @override
  final int coverI;
  @override
  final String firstSentence;
  @override
  final String publishYear;
  @override
  final String authorName;
  @override
  final String publisher;
  @override
  final int isRead;
  @override
  final String notes;

  @override
  String toString() {
    return 'BookList(listName: $listName, key: $key, title: $title, coverI: $coverI, firstSentence: $firstSentence, publishYear: $publishYear, authorName: $authorName, publisher: $publisher, isRead: $isRead, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookList &&
            (identical(other.listName, listName) ||
                const DeepCollectionEquality()
                    .equals(other.listName, listName)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.coverI, coverI) ||
                const DeepCollectionEquality().equals(other.coverI, coverI)) &&
            (identical(other.firstSentence, firstSentence) ||
                const DeepCollectionEquality()
                    .equals(other.firstSentence, firstSentence)) &&
            (identical(other.publishYear, publishYear) ||
                const DeepCollectionEquality()
                    .equals(other.publishYear, publishYear)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listName) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(coverI) ^
      const DeepCollectionEquality().hash(firstSentence) ^
      const DeepCollectionEquality().hash(publishYear) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  _$BookListCopyWith<_BookList> get copyWith =>
      __$BookListCopyWithImpl<_BookList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookListToJson(this);
  }
}

abstract class _BookList extends BookList {
  const _BookList._() : super._();
  const factory _BookList(
      {String listName,
      String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher,
      int isRead,
      String notes}) = _$_BookList;

  factory _BookList.fromJson(Map<String, dynamic> json) = _$_BookList.fromJson;

  @override
  String get listName;
  @override
  String get key;
  @override
  String get title;
  @override
  int get coverI;
  @override
  String get firstSentence;
  @override
  String get publishYear;
  @override
  String get authorName;
  @override
  String get publisher;
  @override
  int get isRead;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$BookListCopyWith<_BookList> get copyWith;
}
