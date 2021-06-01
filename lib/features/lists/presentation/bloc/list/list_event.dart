part of 'list_bloc.dart';

@freezed
abstract class ListEvent with _$ListEvent {
  const factory ListEvent.loadList(
      {@required String listName, GroupValue groupValue}) = _ListEventLoadList;
  const factory ListEvent.readBook(
      {@required BookList book, GroupValue groupValue}) = _ListEventReadBook;
  const factory ListEvent.deleteBookFromList(
      {@required BookList book,
      GroupValue groupValue}) = _ListEventDeleteBookFromList;
}
