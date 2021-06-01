// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BookDetailsEventTearOff {
  const _$BookDetailsEventTearOff();

// ignore: unused_element
  _BookDetailsEventLoadBook loadBook({@required BookList bookList}) {
    return _BookDetailsEventLoadBook(
      bookList: bookList,
    );
  }

// ignore: unused_element
  _BookDetailsEventAddNote addNote(
      {@required BookList book, @required String note}) {
    return _BookDetailsEventAddNote(
      book: book,
      note: note,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookDetailsEvent = _$BookDetailsEventTearOff();

/// @nodoc
mixin _$BookDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadBook(BookList bookList),
    @required TResult addNote(BookList book, String note),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadBook(BookList bookList),
    TResult addNote(BookList book, String note),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadBook(_BookDetailsEventLoadBook value),
    @required TResult addNote(_BookDetailsEventAddNote value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadBook(_BookDetailsEventLoadBook value),
    TResult addNote(_BookDetailsEventAddNote value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BookDetailsEventCopyWith<$Res> {
  factory $BookDetailsEventCopyWith(
          BookDetailsEvent value, $Res Function(BookDetailsEvent) then) =
      _$BookDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookDetailsEventCopyWithImpl<$Res>
    implements $BookDetailsEventCopyWith<$Res> {
  _$BookDetailsEventCopyWithImpl(this._value, this._then);

  final BookDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(BookDetailsEvent) _then;
}

/// @nodoc
abstract class _$BookDetailsEventLoadBookCopyWith<$Res> {
  factory _$BookDetailsEventLoadBookCopyWith(_BookDetailsEventLoadBook value,
          $Res Function(_BookDetailsEventLoadBook) then) =
      __$BookDetailsEventLoadBookCopyWithImpl<$Res>;
  $Res call({BookList bookList});

  $BookListCopyWith<$Res> get bookList;
}

/// @nodoc
class __$BookDetailsEventLoadBookCopyWithImpl<$Res>
    extends _$BookDetailsEventCopyWithImpl<$Res>
    implements _$BookDetailsEventLoadBookCopyWith<$Res> {
  __$BookDetailsEventLoadBookCopyWithImpl(_BookDetailsEventLoadBook _value,
      $Res Function(_BookDetailsEventLoadBook) _then)
      : super(_value, (v) => _then(v as _BookDetailsEventLoadBook));

  @override
  _BookDetailsEventLoadBook get _value =>
      super._value as _BookDetailsEventLoadBook;

  @override
  $Res call({
    Object bookList = freezed,
  }) {
    return _then(_BookDetailsEventLoadBook(
      bookList: bookList == freezed ? _value.bookList : bookList as BookList,
    ));
  }

  @override
  $BookListCopyWith<$Res> get bookList {
    if (_value.bookList == null) {
      return null;
    }
    return $BookListCopyWith<$Res>(_value.bookList, (value) {
      return _then(_value.copyWith(bookList: value));
    });
  }
}

/// @nodoc
class _$_BookDetailsEventLoadBook implements _BookDetailsEventLoadBook {
  const _$_BookDetailsEventLoadBook({@required this.bookList})
      : assert(bookList != null);

  @override
  final BookList bookList;

  @override
  String toString() {
    return 'BookDetailsEvent.loadBook(bookList: $bookList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookDetailsEventLoadBook &&
            (identical(other.bookList, bookList) ||
                const DeepCollectionEquality()
                    .equals(other.bookList, bookList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookList);

  @JsonKey(ignore: true)
  @override
  _$BookDetailsEventLoadBookCopyWith<_BookDetailsEventLoadBook> get copyWith =>
      __$BookDetailsEventLoadBookCopyWithImpl<_BookDetailsEventLoadBook>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadBook(BookList bookList),
    @required TResult addNote(BookList book, String note),
  }) {
    assert(loadBook != null);
    assert(addNote != null);
    return loadBook(bookList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadBook(BookList bookList),
    TResult addNote(BookList book, String note),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadBook != null) {
      return loadBook(bookList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadBook(_BookDetailsEventLoadBook value),
    @required TResult addNote(_BookDetailsEventAddNote value),
  }) {
    assert(loadBook != null);
    assert(addNote != null);
    return loadBook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadBook(_BookDetailsEventLoadBook value),
    TResult addNote(_BookDetailsEventAddNote value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadBook != null) {
      return loadBook(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsEventLoadBook implements BookDetailsEvent {
  const factory _BookDetailsEventLoadBook({@required BookList bookList}) =
      _$_BookDetailsEventLoadBook;

  BookList get bookList;
  @JsonKey(ignore: true)
  _$BookDetailsEventLoadBookCopyWith<_BookDetailsEventLoadBook> get copyWith;
}

/// @nodoc
abstract class _$BookDetailsEventAddNoteCopyWith<$Res> {
  factory _$BookDetailsEventAddNoteCopyWith(_BookDetailsEventAddNote value,
          $Res Function(_BookDetailsEventAddNote) then) =
      __$BookDetailsEventAddNoteCopyWithImpl<$Res>;
  $Res call({BookList book, String note});

  $BookListCopyWith<$Res> get book;
}

/// @nodoc
class __$BookDetailsEventAddNoteCopyWithImpl<$Res>
    extends _$BookDetailsEventCopyWithImpl<$Res>
    implements _$BookDetailsEventAddNoteCopyWith<$Res> {
  __$BookDetailsEventAddNoteCopyWithImpl(_BookDetailsEventAddNote _value,
      $Res Function(_BookDetailsEventAddNote) _then)
      : super(_value, (v) => _then(v as _BookDetailsEventAddNote));

  @override
  _BookDetailsEventAddNote get _value =>
      super._value as _BookDetailsEventAddNote;

  @override
  $Res call({
    Object book = freezed,
    Object note = freezed,
  }) {
    return _then(_BookDetailsEventAddNote(
      book: book == freezed ? _value.book : book as BookList,
      note: note == freezed ? _value.note : note as String,
    ));
  }

  @override
  $BookListCopyWith<$Res> get book {
    if (_value.book == null) {
      return null;
    }
    return $BookListCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
class _$_BookDetailsEventAddNote implements _BookDetailsEventAddNote {
  const _$_BookDetailsEventAddNote({@required this.book, @required this.note})
      : assert(book != null),
        assert(note != null);

  @override
  final BookList book;
  @override
  final String note;

  @override
  String toString() {
    return 'BookDetailsEvent.addNote(book: $book, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookDetailsEventAddNote &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$BookDetailsEventAddNoteCopyWith<_BookDetailsEventAddNote> get copyWith =>
      __$BookDetailsEventAddNoteCopyWithImpl<_BookDetailsEventAddNote>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadBook(BookList bookList),
    @required TResult addNote(BookList book, String note),
  }) {
    assert(loadBook != null);
    assert(addNote != null);
    return addNote(book, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadBook(BookList bookList),
    TResult addNote(BookList book, String note),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNote != null) {
      return addNote(book, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadBook(_BookDetailsEventLoadBook value),
    @required TResult addNote(_BookDetailsEventAddNote value),
  }) {
    assert(loadBook != null);
    assert(addNote != null);
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadBook(_BookDetailsEventLoadBook value),
    TResult addNote(_BookDetailsEventAddNote value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsEventAddNote implements BookDetailsEvent {
  const factory _BookDetailsEventAddNote(
      {@required BookList book,
      @required String note}) = _$_BookDetailsEventAddNote;

  BookList get book;
  String get note;
  @JsonKey(ignore: true)
  _$BookDetailsEventAddNoteCopyWith<_BookDetailsEventAddNote> get copyWith;
}

/// @nodoc
class _$BookDetailsStateTearOff {
  const _$BookDetailsStateTearOff();

// ignore: unused_element
  _BookDetailsStateInitial initial() {
    return const _BookDetailsStateInitial();
  }

// ignore: unused_element
  _BookDetailsStateLoading loading() {
    return const _BookDetailsStateLoading();
  }

// ignore: unused_element
  _BookDetailsStateLoaded loaded({@required BookList book}) {
    return _BookDetailsStateLoaded(
      book: book,
    );
  }

// ignore: unused_element
  _BookDetailsStateError error({@required String message}) {
    return _BookDetailsStateError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookDetailsState = _$BookDetailsStateTearOff();

/// @nodoc
mixin _$BookDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(BookList book),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(BookList book),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_BookDetailsStateInitial value),
    @required TResult loading(_BookDetailsStateLoading value),
    @required TResult loaded(_BookDetailsStateLoaded value),
    @required TResult error(_BookDetailsStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_BookDetailsStateInitial value),
    TResult loading(_BookDetailsStateLoading value),
    TResult loaded(_BookDetailsStateLoaded value),
    TResult error(_BookDetailsStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BookDetailsStateCopyWith<$Res> {
  factory $BookDetailsStateCopyWith(
          BookDetailsState value, $Res Function(BookDetailsState) then) =
      _$BookDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookDetailsStateCopyWithImpl<$Res>
    implements $BookDetailsStateCopyWith<$Res> {
  _$BookDetailsStateCopyWithImpl(this._value, this._then);

  final BookDetailsState _value;
  // ignore: unused_field
  final $Res Function(BookDetailsState) _then;
}

/// @nodoc
abstract class _$BookDetailsStateInitialCopyWith<$Res> {
  factory _$BookDetailsStateInitialCopyWith(_BookDetailsStateInitial value,
          $Res Function(_BookDetailsStateInitial) then) =
      __$BookDetailsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$BookDetailsStateInitialCopyWithImpl<$Res>
    extends _$BookDetailsStateCopyWithImpl<$Res>
    implements _$BookDetailsStateInitialCopyWith<$Res> {
  __$BookDetailsStateInitialCopyWithImpl(_BookDetailsStateInitial _value,
      $Res Function(_BookDetailsStateInitial) _then)
      : super(_value, (v) => _then(v as _BookDetailsStateInitial));

  @override
  _BookDetailsStateInitial get _value =>
      super._value as _BookDetailsStateInitial;
}

/// @nodoc
class _$_BookDetailsStateInitial implements _BookDetailsStateInitial {
  const _$_BookDetailsStateInitial();

  @override
  String toString() {
    return 'BookDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BookDetailsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(BookList book),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(BookList book),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_BookDetailsStateInitial value),
    @required TResult loading(_BookDetailsStateLoading value),
    @required TResult loaded(_BookDetailsStateLoaded value),
    @required TResult error(_BookDetailsStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_BookDetailsStateInitial value),
    TResult loading(_BookDetailsStateLoading value),
    TResult loaded(_BookDetailsStateLoaded value),
    TResult error(_BookDetailsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsStateInitial implements BookDetailsState {
  const factory _BookDetailsStateInitial() = _$_BookDetailsStateInitial;
}

/// @nodoc
abstract class _$BookDetailsStateLoadingCopyWith<$Res> {
  factory _$BookDetailsStateLoadingCopyWith(_BookDetailsStateLoading value,
          $Res Function(_BookDetailsStateLoading) then) =
      __$BookDetailsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$BookDetailsStateLoadingCopyWithImpl<$Res>
    extends _$BookDetailsStateCopyWithImpl<$Res>
    implements _$BookDetailsStateLoadingCopyWith<$Res> {
  __$BookDetailsStateLoadingCopyWithImpl(_BookDetailsStateLoading _value,
      $Res Function(_BookDetailsStateLoading) _then)
      : super(_value, (v) => _then(v as _BookDetailsStateLoading));

  @override
  _BookDetailsStateLoading get _value =>
      super._value as _BookDetailsStateLoading;
}

/// @nodoc
class _$_BookDetailsStateLoading implements _BookDetailsStateLoading {
  const _$_BookDetailsStateLoading();

  @override
  String toString() {
    return 'BookDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BookDetailsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(BookList book),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(BookList book),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_BookDetailsStateInitial value),
    @required TResult loading(_BookDetailsStateLoading value),
    @required TResult loaded(_BookDetailsStateLoaded value),
    @required TResult error(_BookDetailsStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_BookDetailsStateInitial value),
    TResult loading(_BookDetailsStateLoading value),
    TResult loaded(_BookDetailsStateLoaded value),
    TResult error(_BookDetailsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsStateLoading implements BookDetailsState {
  const factory _BookDetailsStateLoading() = _$_BookDetailsStateLoading;
}

/// @nodoc
abstract class _$BookDetailsStateLoadedCopyWith<$Res> {
  factory _$BookDetailsStateLoadedCopyWith(_BookDetailsStateLoaded value,
          $Res Function(_BookDetailsStateLoaded) then) =
      __$BookDetailsStateLoadedCopyWithImpl<$Res>;
  $Res call({BookList book});

  $BookListCopyWith<$Res> get book;
}

/// @nodoc
class __$BookDetailsStateLoadedCopyWithImpl<$Res>
    extends _$BookDetailsStateCopyWithImpl<$Res>
    implements _$BookDetailsStateLoadedCopyWith<$Res> {
  __$BookDetailsStateLoadedCopyWithImpl(_BookDetailsStateLoaded _value,
      $Res Function(_BookDetailsStateLoaded) _then)
      : super(_value, (v) => _then(v as _BookDetailsStateLoaded));

  @override
  _BookDetailsStateLoaded get _value => super._value as _BookDetailsStateLoaded;

  @override
  $Res call({
    Object book = freezed,
  }) {
    return _then(_BookDetailsStateLoaded(
      book: book == freezed ? _value.book : book as BookList,
    ));
  }

  @override
  $BookListCopyWith<$Res> get book {
    if (_value.book == null) {
      return null;
    }
    return $BookListCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
class _$_BookDetailsStateLoaded implements _BookDetailsStateLoaded {
  const _$_BookDetailsStateLoaded({@required this.book}) : assert(book != null);

  @override
  final BookList book;

  @override
  String toString() {
    return 'BookDetailsState.loaded(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookDetailsStateLoaded &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  _$BookDetailsStateLoadedCopyWith<_BookDetailsStateLoaded> get copyWith =>
      __$BookDetailsStateLoadedCopyWithImpl<_BookDetailsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(BookList book),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(BookList book),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_BookDetailsStateInitial value),
    @required TResult loading(_BookDetailsStateLoading value),
    @required TResult loaded(_BookDetailsStateLoaded value),
    @required TResult error(_BookDetailsStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_BookDetailsStateInitial value),
    TResult loading(_BookDetailsStateLoading value),
    TResult loaded(_BookDetailsStateLoaded value),
    TResult error(_BookDetailsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsStateLoaded implements BookDetailsState {
  const factory _BookDetailsStateLoaded({@required BookList book}) =
      _$_BookDetailsStateLoaded;

  BookList get book;
  @JsonKey(ignore: true)
  _$BookDetailsStateLoadedCopyWith<_BookDetailsStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$BookDetailsStateErrorCopyWith<$Res> {
  factory _$BookDetailsStateErrorCopyWith(_BookDetailsStateError value,
          $Res Function(_BookDetailsStateError) then) =
      __$BookDetailsStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$BookDetailsStateErrorCopyWithImpl<$Res>
    extends _$BookDetailsStateCopyWithImpl<$Res>
    implements _$BookDetailsStateErrorCopyWith<$Res> {
  __$BookDetailsStateErrorCopyWithImpl(_BookDetailsStateError _value,
      $Res Function(_BookDetailsStateError) _then)
      : super(_value, (v) => _then(v as _BookDetailsStateError));

  @override
  _BookDetailsStateError get _value => super._value as _BookDetailsStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_BookDetailsStateError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_BookDetailsStateError implements _BookDetailsStateError {
  const _$_BookDetailsStateError({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'BookDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookDetailsStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BookDetailsStateErrorCopyWith<_BookDetailsStateError> get copyWith =>
      __$BookDetailsStateErrorCopyWithImpl<_BookDetailsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(BookList book),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(BookList book),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_BookDetailsStateInitial value),
    @required TResult loading(_BookDetailsStateLoading value),
    @required TResult loaded(_BookDetailsStateLoaded value),
    @required TResult error(_BookDetailsStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_BookDetailsStateInitial value),
    TResult loading(_BookDetailsStateLoading value),
    TResult loaded(_BookDetailsStateLoaded value),
    TResult error(_BookDetailsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BookDetailsStateError implements BookDetailsState {
  const factory _BookDetailsStateError({@required String message}) =
      _$_BookDetailsStateError;

  String get message;
  @JsonKey(ignore: true)
  _$BookDetailsStateErrorCopyWith<_BookDetailsStateError> get copyWith;
}
