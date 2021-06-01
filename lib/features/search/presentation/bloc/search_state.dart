part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchStateInitial;
  const factory SearchState.loading() = _SearchStateLoading;
  const factory SearchState.loaded({@required Books books}) =
      _SearchStateLoaded;
  const factory SearchState.error({@required String message}) =
      _SearchStateError;
}
