// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'books.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Books _$BooksFromJson(Map<String, dynamic> json) {
  return _Books.fromJson(json);
}

/// @nodoc
class _$BooksTearOff {
  const _$BooksTearOff();

// ignore: unused_element
  _Books call(
      {@JsonKey(name: 'numFound') int numFound,
      @JsonKey(name: 'docs') List<Book> books}) {
    return _Books(
      numFound: numFound,
      books: books,
    );
  }

// ignore: unused_element
  Books fromJson(Map<String, Object> json) {
    return Books.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Books = _$BooksTearOff();

/// @nodoc
mixin _$Books {
  @JsonKey(name: 'numFound')
  int get numFound;
  @JsonKey(name: 'docs')
  List<Book> get books;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BooksCopyWith<Books> get copyWith;
}

/// @nodoc
abstract class $BooksCopyWith<$Res> {
  factory $BooksCopyWith(Books value, $Res Function(Books) then) =
      _$BooksCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'numFound') int numFound,
      @JsonKey(name: 'docs') List<Book> books});
}

/// @nodoc
class _$BooksCopyWithImpl<$Res> implements $BooksCopyWith<$Res> {
  _$BooksCopyWithImpl(this._value, this._then);

  final Books _value;
  // ignore: unused_field
  final $Res Function(Books) _then;

  @override
  $Res call({
    Object numFound = freezed,
    Object books = freezed,
  }) {
    return _then(_value.copyWith(
      numFound: numFound == freezed ? _value.numFound : numFound as int,
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$BooksCopyWith<$Res> implements $BooksCopyWith<$Res> {
  factory _$BooksCopyWith(_Books value, $Res Function(_Books) then) =
      __$BooksCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'numFound') int numFound,
      @JsonKey(name: 'docs') List<Book> books});
}

/// @nodoc
class __$BooksCopyWithImpl<$Res> extends _$BooksCopyWithImpl<$Res>
    implements _$BooksCopyWith<$Res> {
  __$BooksCopyWithImpl(_Books _value, $Res Function(_Books) _then)
      : super(_value, (v) => _then(v as _Books));

  @override
  _Books get _value => super._value as _Books;

  @override
  $Res call({
    Object numFound = freezed,
    Object books = freezed,
  }) {
    return _then(_Books(
      numFound: numFound == freezed ? _value.numFound : numFound as int,
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Books extends _Books {
  const _$_Books(
      {@JsonKey(name: 'numFound') this.numFound,
      @JsonKey(name: 'docs') this.books})
      : super._();

  factory _$_Books.fromJson(Map<String, dynamic> json) =>
      _$_$_BooksFromJson(json);

  @override
  @JsonKey(name: 'numFound')
  final int numFound;
  @override
  @JsonKey(name: 'docs')
  final List<Book> books;

  @override
  String toString() {
    return 'Books(numFound: $numFound, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Books &&
            (identical(other.numFound, numFound) ||
                const DeepCollectionEquality()
                    .equals(other.numFound, numFound)) &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numFound) ^
      const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$BooksCopyWith<_Books> get copyWith =>
      __$BooksCopyWithImpl<_Books>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BooksToJson(this);
  }
}

abstract class _Books extends Books {
  const _Books._() : super._();
  const factory _Books(
      {@JsonKey(name: 'numFound') int numFound,
      @JsonKey(name: 'docs') List<Book> books}) = _$_Books;

  factory _Books.fromJson(Map<String, dynamic> json) = _$_Books.fromJson;

  @override
  @JsonKey(name: 'numFound')
  int get numFound;
  @override
  @JsonKey(name: 'docs')
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$BooksCopyWith<_Books> get copyWith;
}
