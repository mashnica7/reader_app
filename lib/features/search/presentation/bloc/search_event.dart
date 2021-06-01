part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.fetchNextPage({String text}) =
      _SearchEventFetchNextPage;
  const factory SearchEvent.search({String text}) = _SearchEventSearch;
}
