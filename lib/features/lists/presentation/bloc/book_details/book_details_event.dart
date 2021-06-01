part of 'book_details_bloc.dart';

@freezed
abstract class BookDetailsEvent with _$BookDetailsEvent {
  const factory BookDetailsEvent.loadBook({@required BookList bookList}) =
      _BookDetailsEventLoadBook;
  const factory BookDetailsEvent.addNote(
      {@required BookList book,
      @required String note}) = _BookDetailsEventAddNote;
}
