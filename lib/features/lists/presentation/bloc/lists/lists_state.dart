part of 'lists_bloc.dart';

@freezed
abstract class ListsState with _$ListsState {
  const factory ListsState.initial() = _ListsStateInitial;
  const factory ListsState.loading() = _ListsStateLoading;
  const factory ListsState.loaded({@required List<ReadList> lists}) =
      _ListsStateLoaded;
  const factory ListsState.error({@required String message}) = _ListsStateError;
}
