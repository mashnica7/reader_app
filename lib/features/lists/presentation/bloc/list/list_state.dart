part of 'list_bloc.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState.initial() = _ListStateInitial;
  const factory ListState.loading() = _ListStateLoading;
  const factory ListState.loaded(
      {@required ReadList lists, GroupValue groupValue}) = _ListStateLoaded;
  const factory ListState.error({@required String message}) = _ListStateError;
}
