// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListsEventTearOff {
  const _$ListsEventTearOff();

// ignore: unused_element
  _ListsEventLoadLists loadLists() {
    return const _ListsEventLoadLists();
  }

// ignore: unused_element
  _ListsEventUpdateList updateList(
      {Book book, String listName, bool isAdding}) {
    return _ListsEventUpdateList(
      book: book,
      listName: listName,
      isAdding: isAdding,
    );
  }

// ignore: unused_element
  _ListsEventCreateList createList({String name}) {
    return _ListsEventCreateList(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListsEvent = _$ListsEventTearOff();

/// @nodoc
mixin _$ListsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadLists(),
    @required TResult updateList(Book book, String listName, bool isAdding),
    @required TResult createList(String name),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadLists(),
    TResult updateList(Book book, String listName, bool isAdding),
    TResult createList(String name),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadLists(_ListsEventLoadLists value),
    @required TResult updateList(_ListsEventUpdateList value),
    @required TResult createList(_ListsEventCreateList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadLists(_ListsEventLoadLists value),
    TResult updateList(_ListsEventUpdateList value),
    TResult createList(_ListsEventCreateList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ListsEventCopyWith<$Res> {
  factory $ListsEventCopyWith(
          ListsEvent value, $Res Function(ListsEvent) then) =
      _$ListsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListsEventCopyWithImpl<$Res> implements $ListsEventCopyWith<$Res> {
  _$ListsEventCopyWithImpl(this._value, this._then);

  final ListsEvent _value;
  // ignore: unused_field
  final $Res Function(ListsEvent) _then;
}

/// @nodoc
abstract class _$ListsEventLoadListsCopyWith<$Res> {
  factory _$ListsEventLoadListsCopyWith(_ListsEventLoadLists value,
          $Res Function(_ListsEventLoadLists) then) =
      __$ListsEventLoadListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListsEventLoadListsCopyWithImpl<$Res>
    extends _$ListsEventCopyWithImpl<$Res>
    implements _$ListsEventLoadListsCopyWith<$Res> {
  __$ListsEventLoadListsCopyWithImpl(
      _ListsEventLoadLists _value, $Res Function(_ListsEventLoadLists) _then)
      : super(_value, (v) => _then(v as _ListsEventLoadLists));

  @override
  _ListsEventLoadLists get _value => super._value as _ListsEventLoadLists;
}

/// @nodoc
class _$_ListsEventLoadLists implements _ListsEventLoadLists {
  const _$_ListsEventLoadLists();

  @override
  String toString() {
    return 'ListsEvent.loadLists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListsEventLoadLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadLists(),
    @required TResult updateList(Book book, String listName, bool isAdding),
    @required TResult createList(String name),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return loadLists();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadLists(),
    TResult updateList(Book book, String listName, bool isAdding),
    TResult createList(String name),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadLists != null) {
      return loadLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadLists(_ListsEventLoadLists value),
    @required TResult updateList(_ListsEventUpdateList value),
    @required TResult createList(_ListsEventCreateList value),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return loadLists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadLists(_ListsEventLoadLists value),
    TResult updateList(_ListsEventUpdateList value),
    TResult createList(_ListsEventCreateList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadLists != null) {
      return loadLists(this);
    }
    return orElse();
  }
}

abstract class _ListsEventLoadLists implements ListsEvent {
  const factory _ListsEventLoadLists() = _$_ListsEventLoadLists;
}

/// @nodoc
abstract class _$ListsEventUpdateListCopyWith<$Res> {
  factory _$ListsEventUpdateListCopyWith(_ListsEventUpdateList value,
          $Res Function(_ListsEventUpdateList) then) =
      __$ListsEventUpdateListCopyWithImpl<$Res>;
  $Res call({Book book, String listName, bool isAdding});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$ListsEventUpdateListCopyWithImpl<$Res>
    extends _$ListsEventCopyWithImpl<$Res>
    implements _$ListsEventUpdateListCopyWith<$Res> {
  __$ListsEventUpdateListCopyWithImpl(
      _ListsEventUpdateList _value, $Res Function(_ListsEventUpdateList) _then)
      : super(_value, (v) => _then(v as _ListsEventUpdateList));

  @override
  _ListsEventUpdateList get _value => super._value as _ListsEventUpdateList;

  @override
  $Res call({
    Object book = freezed,
    Object listName = freezed,
    Object isAdding = freezed,
  }) {
    return _then(_ListsEventUpdateList(
      book: book == freezed ? _value.book : book as Book,
      listName: listName == freezed ? _value.listName : listName as String,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
    ));
  }

  @override
  $BookCopyWith<$Res> get book {
    if (_value.book == null) {
      return null;
    }
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
class _$_ListsEventUpdateList implements _ListsEventUpdateList {
  const _$_ListsEventUpdateList({this.book, this.listName, this.isAdding});

  @override
  final Book book;
  @override
  final String listName;
  @override
  final bool isAdding;

  @override
  String toString() {
    return 'ListsEvent.updateList(book: $book, listName: $listName, isAdding: $isAdding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListsEventUpdateList &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.listName, listName) ||
                const DeepCollectionEquality()
                    .equals(other.listName, listName)) &&
            (identical(other.isAdding, isAdding) ||
                const DeepCollectionEquality()
                    .equals(other.isAdding, isAdding)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(listName) ^
      const DeepCollectionEquality().hash(isAdding);

  @JsonKey(ignore: true)
  @override
  _$ListsEventUpdateListCopyWith<_ListsEventUpdateList> get copyWith =>
      __$ListsEventUpdateListCopyWithImpl<_ListsEventUpdateList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadLists(),
    @required TResult updateList(Book book, String listName, bool isAdding),
    @required TResult createList(String name),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return updateList(book, listName, isAdding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadLists(),
    TResult updateList(Book book, String listName, bool isAdding),
    TResult createList(String name),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateList != null) {
      return updateList(book, listName, isAdding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadLists(_ListsEventLoadLists value),
    @required TResult updateList(_ListsEventUpdateList value),
    @required TResult createList(_ListsEventCreateList value),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return updateList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadLists(_ListsEventLoadLists value),
    TResult updateList(_ListsEventUpdateList value),
    TResult createList(_ListsEventCreateList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateList != null) {
      return updateList(this);
    }
    return orElse();
  }
}

abstract class _ListsEventUpdateList implements ListsEvent {
  const factory _ListsEventUpdateList(
      {Book book, String listName, bool isAdding}) = _$_ListsEventUpdateList;

  Book get book;
  String get listName;
  bool get isAdding;
  @JsonKey(ignore: true)
  _$ListsEventUpdateListCopyWith<_ListsEventUpdateList> get copyWith;
}

/// @nodoc
abstract class _$ListsEventCreateListCopyWith<$Res> {
  factory _$ListsEventCreateListCopyWith(_ListsEventCreateList value,
          $Res Function(_ListsEventCreateList) then) =
      __$ListsEventCreateListCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ListsEventCreateListCopyWithImpl<$Res>
    extends _$ListsEventCopyWithImpl<$Res>
    implements _$ListsEventCreateListCopyWith<$Res> {
  __$ListsEventCreateListCopyWithImpl(
      _ListsEventCreateList _value, $Res Function(_ListsEventCreateList) _then)
      : super(_value, (v) => _then(v as _ListsEventCreateList));

  @override
  _ListsEventCreateList get _value => super._value as _ListsEventCreateList;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ListsEventCreateList(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ListsEventCreateList implements _ListsEventCreateList {
  const _$_ListsEventCreateList({this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ListsEvent.createList(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListsEventCreateList &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ListsEventCreateListCopyWith<_ListsEventCreateList> get copyWith =>
      __$ListsEventCreateListCopyWithImpl<_ListsEventCreateList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadLists(),
    @required TResult updateList(Book book, String listName, bool isAdding),
    @required TResult createList(String name),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return createList(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadLists(),
    TResult updateList(Book book, String listName, bool isAdding),
    TResult createList(String name),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createList != null) {
      return createList(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadLists(_ListsEventLoadLists value),
    @required TResult updateList(_ListsEventUpdateList value),
    @required TResult createList(_ListsEventCreateList value),
  }) {
    assert(loadLists != null);
    assert(updateList != null);
    assert(createList != null);
    return createList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadLists(_ListsEventLoadLists value),
    TResult updateList(_ListsEventUpdateList value),
    TResult createList(_ListsEventCreateList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createList != null) {
      return createList(this);
    }
    return orElse();
  }
}

abstract class _ListsEventCreateList implements ListsEvent {
  const factory _ListsEventCreateList({String name}) = _$_ListsEventCreateList;

  String get name;
  @JsonKey(ignore: true)
  _$ListsEventCreateListCopyWith<_ListsEventCreateList> get copyWith;
}

/// @nodoc
class _$ListsStateTearOff {
  const _$ListsStateTearOff();

// ignore: unused_element
  _ListsStateInitial initial() {
    return const _ListsStateInitial();
  }

// ignore: unused_element
  _ListsStateLoading loading() {
    return const _ListsStateLoading();
  }

// ignore: unused_element
  _ListsStateLoaded loaded({@required List<ReadList> lists}) {
    return _ListsStateLoaded(
      lists: lists,
    );
  }

// ignore: unused_element
  _ListsStateError error({@required String message}) {
    return _ListsStateError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListsState = _$ListsStateTearOff();

/// @nodoc
mixin _$ListsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<ReadList> lists),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<ReadList> lists),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ListsStateInitial value),
    @required TResult loading(_ListsStateLoading value),
    @required TResult loaded(_ListsStateLoaded value),
    @required TResult error(_ListsStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ListsStateInitial value),
    TResult loading(_ListsStateLoading value),
    TResult loaded(_ListsStateLoaded value),
    TResult error(_ListsStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ListsStateCopyWith<$Res> {
  factory $ListsStateCopyWith(
          ListsState value, $Res Function(ListsState) then) =
      _$ListsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListsStateCopyWithImpl<$Res> implements $ListsStateCopyWith<$Res> {
  _$ListsStateCopyWithImpl(this._value, this._then);

  final ListsState _value;
  // ignore: unused_field
  final $Res Function(ListsState) _then;
}

/// @nodoc
abstract class _$ListsStateInitialCopyWith<$Res> {
  factory _$ListsStateInitialCopyWith(
          _ListsStateInitial value, $Res Function(_ListsStateInitial) then) =
      __$ListsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListsStateInitialCopyWithImpl<$Res>
    extends _$ListsStateCopyWithImpl<$Res>
    implements _$ListsStateInitialCopyWith<$Res> {
  __$ListsStateInitialCopyWithImpl(
      _ListsStateInitial _value, $Res Function(_ListsStateInitial) _then)
      : super(_value, (v) => _then(v as _ListsStateInitial));

  @override
  _ListsStateInitial get _value => super._value as _ListsStateInitial;
}

/// @nodoc
class _$_ListsStateInitial implements _ListsStateInitial {
  const _$_ListsStateInitial();

  @override
  String toString() {
    return 'ListsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<ReadList> lists),
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
    TResult loaded(List<ReadList> lists),
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
    @required TResult initial(_ListsStateInitial value),
    @required TResult loading(_ListsStateLoading value),
    @required TResult loaded(_ListsStateLoaded value),
    @required TResult error(_ListsStateError value),
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
    TResult initial(_ListsStateInitial value),
    TResult loading(_ListsStateLoading value),
    TResult loaded(_ListsStateLoaded value),
    TResult error(_ListsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ListsStateInitial implements ListsState {
  const factory _ListsStateInitial() = _$_ListsStateInitial;
}

/// @nodoc
abstract class _$ListsStateLoadingCopyWith<$Res> {
  factory _$ListsStateLoadingCopyWith(
          _ListsStateLoading value, $Res Function(_ListsStateLoading) then) =
      __$ListsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListsStateLoadingCopyWithImpl<$Res>
    extends _$ListsStateCopyWithImpl<$Res>
    implements _$ListsStateLoadingCopyWith<$Res> {
  __$ListsStateLoadingCopyWithImpl(
      _ListsStateLoading _value, $Res Function(_ListsStateLoading) _then)
      : super(_value, (v) => _then(v as _ListsStateLoading));

  @override
  _ListsStateLoading get _value => super._value as _ListsStateLoading;
}

/// @nodoc
class _$_ListsStateLoading implements _ListsStateLoading {
  const _$_ListsStateLoading();

  @override
  String toString() {
    return 'ListsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<ReadList> lists),
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
    TResult loaded(List<ReadList> lists),
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
    @required TResult initial(_ListsStateInitial value),
    @required TResult loading(_ListsStateLoading value),
    @required TResult loaded(_ListsStateLoaded value),
    @required TResult error(_ListsStateError value),
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
    TResult initial(_ListsStateInitial value),
    TResult loading(_ListsStateLoading value),
    TResult loaded(_ListsStateLoaded value),
    TResult error(_ListsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ListsStateLoading implements ListsState {
  const factory _ListsStateLoading() = _$_ListsStateLoading;
}

/// @nodoc
abstract class _$ListsStateLoadedCopyWith<$Res> {
  factory _$ListsStateLoadedCopyWith(
          _ListsStateLoaded value, $Res Function(_ListsStateLoaded) then) =
      __$ListsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<ReadList> lists});
}

/// @nodoc
class __$ListsStateLoadedCopyWithImpl<$Res>
    extends _$ListsStateCopyWithImpl<$Res>
    implements _$ListsStateLoadedCopyWith<$Res> {
  __$ListsStateLoadedCopyWithImpl(
      _ListsStateLoaded _value, $Res Function(_ListsStateLoaded) _then)
      : super(_value, (v) => _then(v as _ListsStateLoaded));

  @override
  _ListsStateLoaded get _value => super._value as _ListsStateLoaded;

  @override
  $Res call({
    Object lists = freezed,
  }) {
    return _then(_ListsStateLoaded(
      lists: lists == freezed ? _value.lists : lists as List<ReadList>,
    ));
  }
}

/// @nodoc
class _$_ListsStateLoaded implements _ListsStateLoaded {
  const _$_ListsStateLoaded({@required this.lists}) : assert(lists != null);

  @override
  final List<ReadList> lists;

  @override
  String toString() {
    return 'ListsState.loaded(lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListsStateLoaded &&
            (identical(other.lists, lists) ||
                const DeepCollectionEquality().equals(other.lists, lists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lists);

  @JsonKey(ignore: true)
  @override
  _$ListsStateLoadedCopyWith<_ListsStateLoaded> get copyWith =>
      __$ListsStateLoadedCopyWithImpl<_ListsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<ReadList> lists),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(lists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<ReadList> lists),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(lists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ListsStateInitial value),
    @required TResult loading(_ListsStateLoading value),
    @required TResult loaded(_ListsStateLoaded value),
    @required TResult error(_ListsStateError value),
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
    TResult initial(_ListsStateInitial value),
    TResult loading(_ListsStateLoading value),
    TResult loaded(_ListsStateLoaded value),
    TResult error(_ListsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ListsStateLoaded implements ListsState {
  const factory _ListsStateLoaded({@required List<ReadList> lists}) =
      _$_ListsStateLoaded;

  List<ReadList> get lists;
  @JsonKey(ignore: true)
  _$ListsStateLoadedCopyWith<_ListsStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$ListsStateErrorCopyWith<$Res> {
  factory _$ListsStateErrorCopyWith(
          _ListsStateError value, $Res Function(_ListsStateError) then) =
      __$ListsStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ListsStateErrorCopyWithImpl<$Res>
    extends _$ListsStateCopyWithImpl<$Res>
    implements _$ListsStateErrorCopyWith<$Res> {
  __$ListsStateErrorCopyWithImpl(
      _ListsStateError _value, $Res Function(_ListsStateError) _then)
      : super(_value, (v) => _then(v as _ListsStateError));

  @override
  _ListsStateError get _value => super._value as _ListsStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ListsStateError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ListsStateError implements _ListsStateError {
  const _$_ListsStateError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ListsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListsStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ListsStateErrorCopyWith<_ListsStateError> get copyWith =>
      __$ListsStateErrorCopyWithImpl<_ListsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<ReadList> lists),
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
    TResult loaded(List<ReadList> lists),
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
    @required TResult initial(_ListsStateInitial value),
    @required TResult loading(_ListsStateLoading value),
    @required TResult loaded(_ListsStateLoaded value),
    @required TResult error(_ListsStateError value),
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
    TResult initial(_ListsStateInitial value),
    TResult loading(_ListsStateLoading value),
    TResult loaded(_ListsStateLoaded value),
    TResult error(_ListsStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListsStateError implements ListsState {
  const factory _ListsStateError({@required String message}) =
      _$_ListsStateError;

  String get message;
  @JsonKey(ignore: true)
  _$ListsStateErrorCopyWith<_ListsStateError> get copyWith;
}
