// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListEventTearOff {
  const _$ListEventTearOff();

// ignore: unused_element
  _ListEventLoadList loadList(
      {@required String listName, GroupValue groupValue}) {
    return _ListEventLoadList(
      listName: listName,
      groupValue: groupValue,
    );
  }

// ignore: unused_element
  _ListEventReadBook readBook(
      {@required BookList book, GroupValue groupValue}) {
    return _ListEventReadBook(
      book: book,
      groupValue: groupValue,
    );
  }

// ignore: unused_element
  _ListEventDeleteBookFromList deleteBookFromList(
      {@required BookList book, GroupValue groupValue}) {
    return _ListEventDeleteBookFromList(
      book: book,
      groupValue: groupValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListEvent = _$ListEventTearOff();

/// @nodoc
mixin _$ListEvent {
  GroupValue get groupValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadList(String listName, GroupValue groupValue),
    @required TResult readBook(BookList book, GroupValue groupValue),
    @required TResult deleteBookFromList(BookList book, GroupValue groupValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadList(String listName, GroupValue groupValue),
    TResult readBook(BookList book, GroupValue groupValue),
    TResult deleteBookFromList(BookList book, GroupValue groupValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadList(_ListEventLoadList value),
    @required TResult readBook(_ListEventReadBook value),
    @required TResult deleteBookFromList(_ListEventDeleteBookFromList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadList(_ListEventLoadList value),
    TResult readBook(_ListEventReadBook value),
    TResult deleteBookFromList(_ListEventDeleteBookFromList value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ListEventCopyWith<ListEvent> get copyWith;
}

/// @nodoc
abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res>;
  $Res call({GroupValue groupValue});
}

/// @nodoc
class _$ListEventCopyWithImpl<$Res> implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  final ListEvent _value;
  // ignore: unused_field
  final $Res Function(ListEvent) _then;

  @override
  $Res call({
    Object groupValue = freezed,
  }) {
    return _then(_value.copyWith(
      groupValue:
          groupValue == freezed ? _value.groupValue : groupValue as GroupValue,
    ));
  }
}

/// @nodoc
abstract class _$ListEventLoadListCopyWith<$Res>
    implements $ListEventCopyWith<$Res> {
  factory _$ListEventLoadListCopyWith(
          _ListEventLoadList value, $Res Function(_ListEventLoadList) then) =
      __$ListEventLoadListCopyWithImpl<$Res>;
  @override
  $Res call({String listName, GroupValue groupValue});
}

/// @nodoc
class __$ListEventLoadListCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res>
    implements _$ListEventLoadListCopyWith<$Res> {
  __$ListEventLoadListCopyWithImpl(
      _ListEventLoadList _value, $Res Function(_ListEventLoadList) _then)
      : super(_value, (v) => _then(v as _ListEventLoadList));

  @override
  _ListEventLoadList get _value => super._value as _ListEventLoadList;

  @override
  $Res call({
    Object listName = freezed,
    Object groupValue = freezed,
  }) {
    return _then(_ListEventLoadList(
      listName: listName == freezed ? _value.listName : listName as String,
      groupValue:
          groupValue == freezed ? _value.groupValue : groupValue as GroupValue,
    ));
  }
}

/// @nodoc
class _$_ListEventLoadList implements _ListEventLoadList {
  const _$_ListEventLoadList({@required this.listName, this.groupValue})
      : assert(listName != null);

  @override
  final String listName;
  @override
  final GroupValue groupValue;

  @override
  String toString() {
    return 'ListEvent.loadList(listName: $listName, groupValue: $groupValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListEventLoadList &&
            (identical(other.listName, listName) ||
                const DeepCollectionEquality()
                    .equals(other.listName, listName)) &&
            (identical(other.groupValue, groupValue) ||
                const DeepCollectionEquality()
                    .equals(other.groupValue, groupValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listName) ^
      const DeepCollectionEquality().hash(groupValue);

  @JsonKey(ignore: true)
  @override
  _$ListEventLoadListCopyWith<_ListEventLoadList> get copyWith =>
      __$ListEventLoadListCopyWithImpl<_ListEventLoadList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadList(String listName, GroupValue groupValue),
    @required TResult readBook(BookList book, GroupValue groupValue),
    @required TResult deleteBookFromList(BookList book, GroupValue groupValue),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return loadList(listName, groupValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadList(String listName, GroupValue groupValue),
    TResult readBook(BookList book, GroupValue groupValue),
    TResult deleteBookFromList(BookList book, GroupValue groupValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadList != null) {
      return loadList(listName, groupValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadList(_ListEventLoadList value),
    @required TResult readBook(_ListEventReadBook value),
    @required TResult deleteBookFromList(_ListEventDeleteBookFromList value),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadList(_ListEventLoadList value),
    TResult readBook(_ListEventReadBook value),
    TResult deleteBookFromList(_ListEventDeleteBookFromList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class _ListEventLoadList implements ListEvent {
  const factory _ListEventLoadList(
      {@required String listName,
      GroupValue groupValue}) = _$_ListEventLoadList;

  String get listName;
  @override
  GroupValue get groupValue;
  @override
  @JsonKey(ignore: true)
  _$ListEventLoadListCopyWith<_ListEventLoadList> get copyWith;
}

/// @nodoc
abstract class _$ListEventReadBookCopyWith<$Res>
    implements $ListEventCopyWith<$Res> {
  factory _$ListEventReadBookCopyWith(
          _ListEventReadBook value, $Res Function(_ListEventReadBook) then) =
      __$ListEventReadBookCopyWithImpl<$Res>;
  @override
  $Res call({BookList book, GroupValue groupValue});

  $BookListCopyWith<$Res> get book;
}

/// @nodoc
class __$ListEventReadBookCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res>
    implements _$ListEventReadBookCopyWith<$Res> {
  __$ListEventReadBookCopyWithImpl(
      _ListEventReadBook _value, $Res Function(_ListEventReadBook) _then)
      : super(_value, (v) => _then(v as _ListEventReadBook));

  @override
  _ListEventReadBook get _value => super._value as _ListEventReadBook;

  @override
  $Res call({
    Object book = freezed,
    Object groupValue = freezed,
  }) {
    return _then(_ListEventReadBook(
      book: book == freezed ? _value.book : book as BookList,
      groupValue:
          groupValue == freezed ? _value.groupValue : groupValue as GroupValue,
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
class _$_ListEventReadBook implements _ListEventReadBook {
  const _$_ListEventReadBook({@required this.book, this.groupValue})
      : assert(book != null);

  @override
  final BookList book;
  @override
  final GroupValue groupValue;

  @override
  String toString() {
    return 'ListEvent.readBook(book: $book, groupValue: $groupValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListEventReadBook &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.groupValue, groupValue) ||
                const DeepCollectionEquality()
                    .equals(other.groupValue, groupValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(groupValue);

  @JsonKey(ignore: true)
  @override
  _$ListEventReadBookCopyWith<_ListEventReadBook> get copyWith =>
      __$ListEventReadBookCopyWithImpl<_ListEventReadBook>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadList(String listName, GroupValue groupValue),
    @required TResult readBook(BookList book, GroupValue groupValue),
    @required TResult deleteBookFromList(BookList book, GroupValue groupValue),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return readBook(book, groupValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadList(String listName, GroupValue groupValue),
    TResult readBook(BookList book, GroupValue groupValue),
    TResult deleteBookFromList(BookList book, GroupValue groupValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readBook != null) {
      return readBook(book, groupValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadList(_ListEventLoadList value),
    @required TResult readBook(_ListEventReadBook value),
    @required TResult deleteBookFromList(_ListEventDeleteBookFromList value),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return readBook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadList(_ListEventLoadList value),
    TResult readBook(_ListEventReadBook value),
    TResult deleteBookFromList(_ListEventDeleteBookFromList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (readBook != null) {
      return readBook(this);
    }
    return orElse();
  }
}

abstract class _ListEventReadBook implements ListEvent {
  const factory _ListEventReadBook(
      {@required BookList book, GroupValue groupValue}) = _$_ListEventReadBook;

  BookList get book;
  @override
  GroupValue get groupValue;
  @override
  @JsonKey(ignore: true)
  _$ListEventReadBookCopyWith<_ListEventReadBook> get copyWith;
}

/// @nodoc
abstract class _$ListEventDeleteBookFromListCopyWith<$Res>
    implements $ListEventCopyWith<$Res> {
  factory _$ListEventDeleteBookFromListCopyWith(
          _ListEventDeleteBookFromList value,
          $Res Function(_ListEventDeleteBookFromList) then) =
      __$ListEventDeleteBookFromListCopyWithImpl<$Res>;
  @override
  $Res call({BookList book, GroupValue groupValue});

  $BookListCopyWith<$Res> get book;
}

/// @nodoc
class __$ListEventDeleteBookFromListCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res>
    implements _$ListEventDeleteBookFromListCopyWith<$Res> {
  __$ListEventDeleteBookFromListCopyWithImpl(
      _ListEventDeleteBookFromList _value,
      $Res Function(_ListEventDeleteBookFromList) _then)
      : super(_value, (v) => _then(v as _ListEventDeleteBookFromList));

  @override
  _ListEventDeleteBookFromList get _value =>
      super._value as _ListEventDeleteBookFromList;

  @override
  $Res call({
    Object book = freezed,
    Object groupValue = freezed,
  }) {
    return _then(_ListEventDeleteBookFromList(
      book: book == freezed ? _value.book : book as BookList,
      groupValue:
          groupValue == freezed ? _value.groupValue : groupValue as GroupValue,
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
class _$_ListEventDeleteBookFromList implements _ListEventDeleteBookFromList {
  const _$_ListEventDeleteBookFromList({@required this.book, this.groupValue})
      : assert(book != null);

  @override
  final BookList book;
  @override
  final GroupValue groupValue;

  @override
  String toString() {
    return 'ListEvent.deleteBookFromList(book: $book, groupValue: $groupValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListEventDeleteBookFromList &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.groupValue, groupValue) ||
                const DeepCollectionEquality()
                    .equals(other.groupValue, groupValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(groupValue);

  @JsonKey(ignore: true)
  @override
  _$ListEventDeleteBookFromListCopyWith<_ListEventDeleteBookFromList>
      get copyWith => __$ListEventDeleteBookFromListCopyWithImpl<
          _ListEventDeleteBookFromList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadList(String listName, GroupValue groupValue),
    @required TResult readBook(BookList book, GroupValue groupValue),
    @required TResult deleteBookFromList(BookList book, GroupValue groupValue),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return deleteBookFromList(book, groupValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadList(String listName, GroupValue groupValue),
    TResult readBook(BookList book, GroupValue groupValue),
    TResult deleteBookFromList(BookList book, GroupValue groupValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteBookFromList != null) {
      return deleteBookFromList(book, groupValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadList(_ListEventLoadList value),
    @required TResult readBook(_ListEventReadBook value),
    @required TResult deleteBookFromList(_ListEventDeleteBookFromList value),
  }) {
    assert(loadList != null);
    assert(readBook != null);
    assert(deleteBookFromList != null);
    return deleteBookFromList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadList(_ListEventLoadList value),
    TResult readBook(_ListEventReadBook value),
    TResult deleteBookFromList(_ListEventDeleteBookFromList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteBookFromList != null) {
      return deleteBookFromList(this);
    }
    return orElse();
  }
}

abstract class _ListEventDeleteBookFromList implements ListEvent {
  const factory _ListEventDeleteBookFromList(
      {@required BookList book,
      GroupValue groupValue}) = _$_ListEventDeleteBookFromList;

  BookList get book;
  @override
  GroupValue get groupValue;
  @override
  @JsonKey(ignore: true)
  _$ListEventDeleteBookFromListCopyWith<_ListEventDeleteBookFromList>
      get copyWith;
}

/// @nodoc
class _$ListStateTearOff {
  const _$ListStateTearOff();

// ignore: unused_element
  _ListStateInitial initial() {
    return const _ListStateInitial();
  }

// ignore: unused_element
  _ListStateLoading loading() {
    return const _ListStateLoading();
  }

// ignore: unused_element
  _ListStateLoaded loaded({@required ReadList lists, GroupValue groupValue}) {
    return _ListStateLoaded(
      lists: lists,
      groupValue: groupValue,
    );
  }

// ignore: unused_element
  _ListStateError error({@required String message}) {
    return _ListStateError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListState = _$ListStateTearOff();

/// @nodoc
mixin _$ListState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(ReadList lists, GroupValue groupValue),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(ReadList lists, GroupValue groupValue),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ListStateInitial value),
    @required TResult loading(_ListStateLoading value),
    @required TResult loaded(_ListStateLoaded value),
    @required TResult error(_ListStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ListStateInitial value),
    TResult loading(_ListStateLoading value),
    TResult loaded(_ListStateLoaded value),
    TResult error(_ListStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;
}

/// @nodoc
abstract class _$ListStateInitialCopyWith<$Res> {
  factory _$ListStateInitialCopyWith(
          _ListStateInitial value, $Res Function(_ListStateInitial) then) =
      __$ListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListStateInitialCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateInitialCopyWith<$Res> {
  __$ListStateInitialCopyWithImpl(
      _ListStateInitial _value, $Res Function(_ListStateInitial) _then)
      : super(_value, (v) => _then(v as _ListStateInitial));

  @override
  _ListStateInitial get _value => super._value as _ListStateInitial;
}

/// @nodoc
class _$_ListStateInitial implements _ListStateInitial {
  const _$_ListStateInitial();

  @override
  String toString() {
    return 'ListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(ReadList lists, GroupValue groupValue),
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
    TResult loaded(ReadList lists, GroupValue groupValue),
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
    @required TResult initial(_ListStateInitial value),
    @required TResult loading(_ListStateLoading value),
    @required TResult loaded(_ListStateLoaded value),
    @required TResult error(_ListStateError value),
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
    TResult initial(_ListStateInitial value),
    TResult loading(_ListStateLoading value),
    TResult loaded(_ListStateLoaded value),
    TResult error(_ListStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ListStateInitial implements ListState {
  const factory _ListStateInitial() = _$_ListStateInitial;
}

/// @nodoc
abstract class _$ListStateLoadingCopyWith<$Res> {
  factory _$ListStateLoadingCopyWith(
          _ListStateLoading value, $Res Function(_ListStateLoading) then) =
      __$ListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListStateLoadingCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateLoadingCopyWith<$Res> {
  __$ListStateLoadingCopyWithImpl(
      _ListStateLoading _value, $Res Function(_ListStateLoading) _then)
      : super(_value, (v) => _then(v as _ListStateLoading));

  @override
  _ListStateLoading get _value => super._value as _ListStateLoading;
}

/// @nodoc
class _$_ListStateLoading implements _ListStateLoading {
  const _$_ListStateLoading();

  @override
  String toString() {
    return 'ListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(ReadList lists, GroupValue groupValue),
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
    TResult loaded(ReadList lists, GroupValue groupValue),
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
    @required TResult initial(_ListStateInitial value),
    @required TResult loading(_ListStateLoading value),
    @required TResult loaded(_ListStateLoaded value),
    @required TResult error(_ListStateError value),
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
    TResult initial(_ListStateInitial value),
    TResult loading(_ListStateLoading value),
    TResult loaded(_ListStateLoaded value),
    TResult error(_ListStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ListStateLoading implements ListState {
  const factory _ListStateLoading() = _$_ListStateLoading;
}

/// @nodoc
abstract class _$ListStateLoadedCopyWith<$Res> {
  factory _$ListStateLoadedCopyWith(
          _ListStateLoaded value, $Res Function(_ListStateLoaded) then) =
      __$ListStateLoadedCopyWithImpl<$Res>;
  $Res call({ReadList lists, GroupValue groupValue});

  $ReadListCopyWith<$Res> get lists;
}

/// @nodoc
class __$ListStateLoadedCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateLoadedCopyWith<$Res> {
  __$ListStateLoadedCopyWithImpl(
      _ListStateLoaded _value, $Res Function(_ListStateLoaded) _then)
      : super(_value, (v) => _then(v as _ListStateLoaded));

  @override
  _ListStateLoaded get _value => super._value as _ListStateLoaded;

  @override
  $Res call({
    Object lists = freezed,
    Object groupValue = freezed,
  }) {
    return _then(_ListStateLoaded(
      lists: lists == freezed ? _value.lists : lists as ReadList,
      groupValue:
          groupValue == freezed ? _value.groupValue : groupValue as GroupValue,
    ));
  }

  @override
  $ReadListCopyWith<$Res> get lists {
    if (_value.lists == null) {
      return null;
    }
    return $ReadListCopyWith<$Res>(_value.lists, (value) {
      return _then(_value.copyWith(lists: value));
    });
  }
}

/// @nodoc
class _$_ListStateLoaded implements _ListStateLoaded {
  const _$_ListStateLoaded({@required this.lists, this.groupValue})
      : assert(lists != null);

  @override
  final ReadList lists;
  @override
  final GroupValue groupValue;

  @override
  String toString() {
    return 'ListState.loaded(lists: $lists, groupValue: $groupValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListStateLoaded &&
            (identical(other.lists, lists) ||
                const DeepCollectionEquality().equals(other.lists, lists)) &&
            (identical(other.groupValue, groupValue) ||
                const DeepCollectionEquality()
                    .equals(other.groupValue, groupValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lists) ^
      const DeepCollectionEquality().hash(groupValue);

  @JsonKey(ignore: true)
  @override
  _$ListStateLoadedCopyWith<_ListStateLoaded> get copyWith =>
      __$ListStateLoadedCopyWithImpl<_ListStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(ReadList lists, GroupValue groupValue),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(lists, groupValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(ReadList lists, GroupValue groupValue),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(lists, groupValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ListStateInitial value),
    @required TResult loading(_ListStateLoading value),
    @required TResult loaded(_ListStateLoaded value),
    @required TResult error(_ListStateError value),
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
    TResult initial(_ListStateInitial value),
    TResult loading(_ListStateLoading value),
    TResult loaded(_ListStateLoaded value),
    TResult error(_ListStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ListStateLoaded implements ListState {
  const factory _ListStateLoaded(
      {@required ReadList lists, GroupValue groupValue}) = _$_ListStateLoaded;

  ReadList get lists;
  GroupValue get groupValue;
  @JsonKey(ignore: true)
  _$ListStateLoadedCopyWith<_ListStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$ListStateErrorCopyWith<$Res> {
  factory _$ListStateErrorCopyWith(
          _ListStateError value, $Res Function(_ListStateError) then) =
      __$ListStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ListStateErrorCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateErrorCopyWith<$Res> {
  __$ListStateErrorCopyWithImpl(
      _ListStateError _value, $Res Function(_ListStateError) _then)
      : super(_value, (v) => _then(v as _ListStateError));

  @override
  _ListStateError get _value => super._value as _ListStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ListStateError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ListStateError implements _ListStateError {
  const _$_ListStateError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ListStateErrorCopyWith<_ListStateError> get copyWith =>
      __$ListStateErrorCopyWithImpl<_ListStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(ReadList lists, GroupValue groupValue),
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
    TResult loaded(ReadList lists, GroupValue groupValue),
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
    @required TResult initial(_ListStateInitial value),
    @required TResult loading(_ListStateLoading value),
    @required TResult loaded(_ListStateLoaded value),
    @required TResult error(_ListStateError value),
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
    TResult initial(_ListStateInitial value),
    TResult loading(_ListStateLoading value),
    TResult loaded(_ListStateLoaded value),
    TResult error(_ListStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListStateError implements ListState {
  const factory _ListStateError({@required String message}) = _$_ListStateError;

  String get message;
  @JsonKey(ignore: true)
  _$ListStateErrorCopyWith<_ListStateError> get copyWith;
}
