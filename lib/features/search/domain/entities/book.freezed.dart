// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

// ignore: unused_element
  _Book call(
      {String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher}) {
    return _Book(
      key: key,
      title: title,
      coverI: coverI,
      firstSentence: firstSentence,
      publishYear: publishYear,
      authorName: authorName,
      publisher: publisher,
    );
  }

// ignore: unused_element
  Book fromJson(Map<String, Object> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  String get key;
  String get title;
  int get coverI;
  String get firstSentence;
  String get publishYear;
  String get authorName;
  String get publisher;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object key = freezed,
    Object title = freezed,
    Object coverI = freezed,
    Object firstSentence = freezed,
    Object publishYear = freezed,
    Object authorName = freezed,
    Object publisher = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object key = freezed,
    Object title = freezed,
    Object coverI = freezed,
    Object firstSentence = freezed,
    Object publishYear = freezed,
    Object authorName = freezed,
    Object publisher = freezed,
  }) {
    return _then(_Book(
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
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Book extends _Book {
  const _$_Book(
      {this.key,
      this.title,
      this.coverI,
      this.firstSentence,
      this.publishYear,
      this.authorName,
      this.publisher})
      : super._();

  factory _$_Book.fromJson(Map<String, dynamic> json) =>
      _$_$_BookFromJson(json);

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
  String toString() {
    return 'Book(key: $key, title: $title, coverI: $coverI, firstSentence: $firstSentence, publishYear: $publishYear, authorName: $authorName, publisher: $publisher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
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
                    .equals(other.publisher, publisher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(coverI) ^
      const DeepCollectionEquality().hash(firstSentence) ^
      const DeepCollectionEquality().hash(publishYear) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(publisher);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookToJson(this);
  }
}

abstract class _Book extends Book {
  const _Book._() : super._();
  const factory _Book(
      {String key,
      String title,
      int coverI,
      String firstSentence,
      String publishYear,
      String authorName,
      String publisher}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

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
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith;
}
