part of 'book_details_bloc.dart';

@freezed
abstract class BookDetailsState with _$BookDetailsState {
  const factory BookDetailsState.initial() = _BookDetailsStateInitial;
  const factory BookDetailsState.loading() = _BookDetailsStateLoading;
  const factory BookDetailsState.loaded({@required BookList book}) =
      _BookDetailsStateLoaded;
  const factory BookDetailsState.error({@required String message}) =
      _BookDetailsStateError;
}
