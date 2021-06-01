import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/text_constants.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../search/domain/entities/book.dart';
import '../../../domain/entities/read_list.dart';
import '../../../domain/repositories/i_lists_repository.dart';

part 'lists_bloc.freezed.dart';
part 'lists_event.dart';
part 'lists_state.dart';

@injectable
class ListsBloc extends Bloc<ListsEvent, ListsState> {
  final IListsRepository listsRepository;

  ListsBloc({@required this.listsRepository})
      : super(const _ListsStateInitial());

  @override
  Stream<ListsState> mapEventToState(
    ListsEvent event,
  ) async* {
    yield* event.map(
      loadLists: (e) async* {
        yield const ListsState.loading();

        final Either<Failure, List<ReadList>> listsOrFailure =
            await listsRepository.loadReadLists();

        yield* listsOrFailure.fold((failure) async* {
          yield ListsState.error(
              message: failure.message ?? cSomethingWentWrongMessage);
        }, (lists) async* {
          yield ListsState.loaded(lists: lists);
        });
      },
      updateList: (e) async* {
        yield const ListsState.loading();

        final Either<Failure, List<ReadList>> listsOrFailure =
            await listsRepository.updateList(
                listName: e.listName, book: e.book, isAdding: e.isAdding);

        yield* listsOrFailure.fold((failure) async* {
          yield ListsState.error(
              message: failure.message ?? cSomethingWentWrongMessage);
        }, (lists) async* {
          yield ListsState.loaded(lists: lists);
        });
      },
      createList: (e) async* {
        yield const ListsState.loading();

        final Either<Failure, List<ReadList>> listsOrFailure =
            await listsRepository.createNewList(name: e.name);

        yield* listsOrFailure.fold((failure) async* {
          yield ListsState.error(
              message: failure.message ?? cSomethingWentWrongMessage);
        }, (lists) async* {
          yield ListsState.loaded(lists: lists);
        });
      },
    );
  }
}
