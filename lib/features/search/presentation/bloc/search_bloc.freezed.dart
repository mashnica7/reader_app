// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  _SearchEventFetchNextPage fetchNextPage({String text}) {
    return _SearchEventFetchNextPage(
      text: text,
    );
  }

// ignore: unused_element
  _SearchEventSearch search({String text}) {
    return _SearchEventSearch(
      text: text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  String get text;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNextPage(String text),
    @required TResult search(String text),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNextPage(String text),
    TResult search(String text),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNextPage(_SearchEventFetchNextPage value),
    @required TResult search(_SearchEventSearch value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNextPage(_SearchEventFetchNextPage value),
    TResult search(_SearchEventSearch value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchEventFetchNextPageCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchEventFetchNextPageCopyWith(_SearchEventFetchNextPage value,
          $Res Function(_SearchEventFetchNextPage) then) =
      __$SearchEventFetchNextPageCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$SearchEventFetchNextPageCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventFetchNextPageCopyWith<$Res> {
  __$SearchEventFetchNextPageCopyWithImpl(_SearchEventFetchNextPage _value,
      $Res Function(_SearchEventFetchNextPage) _then)
      : super(_value, (v) => _then(v as _SearchEventFetchNextPage));

  @override
  _SearchEventFetchNextPage get _value =>
      super._value as _SearchEventFetchNextPage;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_SearchEventFetchNextPage(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_SearchEventFetchNextPage implements _SearchEventFetchNextPage {
  const _$_SearchEventFetchNextPage({this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent.fetchNextPage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchEventFetchNextPage &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$SearchEventFetchNextPageCopyWith<_SearchEventFetchNextPage> get copyWith =>
      __$SearchEventFetchNextPageCopyWithImpl<_SearchEventFetchNextPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNextPage(String text),
    @required TResult search(String text),
  }) {
    assert(fetchNextPage != null);
    assert(search != null);
    return fetchNextPage(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNextPage(String text),
    TResult search(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchNextPage != null) {
      return fetchNextPage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNextPage(_SearchEventFetchNextPage value),
    @required TResult search(_SearchEventSearch value),
  }) {
    assert(fetchNextPage != null);
    assert(search != null);
    return fetchNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNextPage(_SearchEventFetchNextPage value),
    TResult search(_SearchEventSearch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchNextPage != null) {
      return fetchNextPage(this);
    }
    return orElse();
  }
}

abstract class _SearchEventFetchNextPage implements SearchEvent {
  const factory _SearchEventFetchNextPage({String text}) =
      _$_SearchEventFetchNextPage;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$SearchEventFetchNextPageCopyWith<_SearchEventFetchNextPage> get copyWith;
}

/// @nodoc
abstract class _$SearchEventSearchCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchEventSearchCopyWith(
          _SearchEventSearch value, $Res Function(_SearchEventSearch) then) =
      __$SearchEventSearchCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$SearchEventSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchEventSearchCopyWith<$Res> {
  __$SearchEventSearchCopyWithImpl(
      _SearchEventSearch _value, $Res Function(_SearchEventSearch) _then)
      : super(_value, (v) => _then(v as _SearchEventSearch));

  @override
  _SearchEventSearch get _value => super._value as _SearchEventSearch;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_SearchEventSearch(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_SearchEventSearch implements _SearchEventSearch {
  const _$_SearchEventSearch({this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchEventSearch &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$SearchEventSearchCopyWith<_SearchEventSearch> get copyWith =>
      __$SearchEventSearchCopyWithImpl<_SearchEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNextPage(String text),
    @required TResult search(String text),
  }) {
    assert(fetchNextPage != null);
    assert(search != null);
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNextPage(String text),
    TResult search(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNextPage(_SearchEventFetchNextPage value),
    @required TResult search(_SearchEventSearch value),
  }) {
    assert(fetchNextPage != null);
    assert(search != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNextPage(_SearchEventFetchNextPage value),
    TResult search(_SearchEventSearch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEventSearch implements SearchEvent {
  const factory _SearchEventSearch({String text}) = _$_SearchEventSearch;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$SearchEventSearchCopyWith<_SearchEventSearch> get copyWith;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchStateInitial initial() {
    return const _SearchStateInitial();
  }

// ignore: unused_element
  _SearchStateLoading loading() {
    return const _SearchStateLoading();
  }

// ignore: unused_element
  _SearchStateLoaded loaded({@required Books books}) {
    return _SearchStateLoaded(
      books: books,
    );
  }

// ignore: unused_element
  _SearchStateError error({@required String message}) {
    return _SearchStateError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Books books),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Books books),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SearchStateInitial value),
    @required TResult loading(_SearchStateLoading value),
    @required TResult loaded(_SearchStateLoaded value),
    @required TResult error(_SearchStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_SearchStateInitial value),
    TResult loading(_SearchStateLoading value),
    TResult loaded(_SearchStateLoaded value),
    TResult error(_SearchStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$SearchStateInitialCopyWith<$Res> {
  factory _$SearchStateInitialCopyWith(
          _SearchStateInitial value, $Res Function(_SearchStateInitial) then) =
      __$SearchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStateInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateInitialCopyWith<$Res> {
  __$SearchStateInitialCopyWithImpl(
      _SearchStateInitial _value, $Res Function(_SearchStateInitial) _then)
      : super(_value, (v) => _then(v as _SearchStateInitial));

  @override
  _SearchStateInitial get _value => super._value as _SearchStateInitial;
}

/// @nodoc
class _$_SearchStateInitial implements _SearchStateInitial {
  const _$_SearchStateInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Books books),
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
    TResult loaded(Books books),
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
    @required TResult initial(_SearchStateInitial value),
    @required TResult loading(_SearchStateLoading value),
    @required TResult loaded(_SearchStateLoaded value),
    @required TResult error(_SearchStateError value),
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
    TResult initial(_SearchStateInitial value),
    TResult loading(_SearchStateLoading value),
    TResult loaded(_SearchStateLoaded value),
    TResult error(_SearchStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInitial implements SearchState {
  const factory _SearchStateInitial() = _$_SearchStateInitial;
}

/// @nodoc
abstract class _$SearchStateLoadingCopyWith<$Res> {
  factory _$SearchStateLoadingCopyWith(
          _SearchStateLoading value, $Res Function(_SearchStateLoading) then) =
      __$SearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateLoadingCopyWith<$Res> {
  __$SearchStateLoadingCopyWithImpl(
      _SearchStateLoading _value, $Res Function(_SearchStateLoading) _then)
      : super(_value, (v) => _then(v as _SearchStateLoading));

  @override
  _SearchStateLoading get _value => super._value as _SearchStateLoading;
}

/// @nodoc
class _$_SearchStateLoading implements _SearchStateLoading {
  const _$_SearchStateLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Books books),
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
    TResult loaded(Books books),
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
    @required TResult initial(_SearchStateInitial value),
    @required TResult loading(_SearchStateLoading value),
    @required TResult loaded(_SearchStateLoaded value),
    @required TResult error(_SearchStateError value),
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
    TResult initial(_SearchStateInitial value),
    TResult loading(_SearchStateLoading value),
    TResult loaded(_SearchStateLoaded value),
    TResult error(_SearchStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoading implements SearchState {
  const factory _SearchStateLoading() = _$_SearchStateLoading;
}

/// @nodoc
abstract class _$SearchStateLoadedCopyWith<$Res> {
  factory _$SearchStateLoadedCopyWith(
          _SearchStateLoaded value, $Res Function(_SearchStateLoaded) then) =
      __$SearchStateLoadedCopyWithImpl<$Res>;
  $Res call({Books books});

  $BooksCopyWith<$Res> get books;
}

/// @nodoc
class __$SearchStateLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateLoadedCopyWith<$Res> {
  __$SearchStateLoadedCopyWithImpl(
      _SearchStateLoaded _value, $Res Function(_SearchStateLoaded) _then)
      : super(_value, (v) => _then(v as _SearchStateLoaded));

  @override
  _SearchStateLoaded get _value => super._value as _SearchStateLoaded;

  @override
  $Res call({
    Object books = freezed,
  }) {
    return _then(_SearchStateLoaded(
      books: books == freezed ? _value.books : books as Books,
    ));
  }

  @override
  $BooksCopyWith<$Res> get books {
    if (_value.books == null) {
      return null;
    }
    return $BooksCopyWith<$Res>(_value.books, (value) {
      return _then(_value.copyWith(books: value));
    });
  }
}

/// @nodoc
class _$_SearchStateLoaded implements _SearchStateLoaded {
  const _$_SearchStateLoaded({@required this.books}) : assert(books != null);

  @override
  final Books books;

  @override
  String toString() {
    return 'SearchState.loaded(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateLoaded &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$SearchStateLoadedCopyWith<_SearchStateLoaded> get copyWith =>
      __$SearchStateLoadedCopyWithImpl<_SearchStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Books books),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(Books books),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SearchStateInitial value),
    @required TResult loading(_SearchStateLoading value),
    @required TResult loaded(_SearchStateLoaded value),
    @required TResult error(_SearchStateError value),
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
    TResult initial(_SearchStateInitial value),
    TResult loading(_SearchStateLoading value),
    TResult loaded(_SearchStateLoaded value),
    TResult error(_SearchStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoaded implements SearchState {
  const factory _SearchStateLoaded({@required Books books}) =
      _$_SearchStateLoaded;

  Books get books;
  @JsonKey(ignore: true)
  _$SearchStateLoadedCopyWith<_SearchStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$SearchStateErrorCopyWith<$Res> {
  factory _$SearchStateErrorCopyWith(
          _SearchStateError value, $Res Function(_SearchStateError) then) =
      __$SearchStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SearchStateErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateErrorCopyWith<$Res> {
  __$SearchStateErrorCopyWithImpl(
      _SearchStateError _value, $Res Function(_SearchStateError) _then)
      : super(_value, (v) => _then(v as _SearchStateError));

  @override
  _SearchStateError get _value => super._value as _SearchStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SearchStateError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_SearchStateError implements _SearchStateError {
  const _$_SearchStateError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SearchStateErrorCopyWith<_SearchStateError> get copyWith =>
      __$SearchStateErrorCopyWithImpl<_SearchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(Books books),
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
    TResult loaded(Books books),
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
    @required TResult initial(_SearchStateInitial value),
    @required TResult loading(_SearchStateLoading value),
    @required TResult loaded(_SearchStateLoaded value),
    @required TResult error(_SearchStateError value),
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
    TResult initial(_SearchStateInitial value),
    TResult loading(_SearchStateLoading value),
    TResult loaded(_SearchStateLoaded value),
    TResult error(_SearchStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchStateError implements SearchState {
  const factory _SearchStateError({@required String message}) =
      _$_SearchStateError;

  String get message;
  @JsonKey(ignore: true)
  _$SearchStateErrorCopyWith<_SearchStateError> get copyWith;
}
