part of 'lists_bloc.dart';

@freezed
abstract class ListsEvent with _$ListsEvent {
  const factory ListsEvent.loadLists() = _ListsEventLoadLists;
  const factory ListsEvent.updateList(
      {Book book, String listName, bool isAdding}) = _ListsEventUpdateList;

  const factory ListsEvent.createList({String name}) = _ListsEventCreateList;
}
