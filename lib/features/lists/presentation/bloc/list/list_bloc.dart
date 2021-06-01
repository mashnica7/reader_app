import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reader_app/features/lists/domain/entities/book_list.dart';

import '../../../../../core/constants/key_constants.dart';
import '../../../../../core/constants/text_constants.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/read_list.dart';
import '../../../domain/repositories/i_lists_repository.dart';

part 'list_bloc.freezed.dart';
part 'list_event.dart';
part 'list_state.dart';

@injectable
class ListBloc extends Bloc<ListEvent, ListState> {
  final IListsRepository listsRepository;

  ListBloc({@required this.listsRepository}) : super(const _ListStateInitial());

  @override
  Stream<ListState> mapEventToState(
    ListEvent event,
  ) async* {
    yield* event.map(loadList: (e) async* {
      yield const ListState.loading();

      final Either<Failure, ReadList> listsOrFailure = await listsRepository
          .loadList(listName: e.listName, groupValue: e.groupValue);

      yield* listsOrFailure.fold((failure) async* {
        yield ListState.error(
            message: failure.message ?? cSomethingWentWrongMessage);
      }, (lists) async* {
        yield ListState.loaded(lists: lists, groupValue: e.groupValue);
      });
    }, readBook: (e) async* {
      yield const ListState.loading();

      final Either<Failure, ReadList> listsOrFailure = await listsRepository
          .readBook(book: e.book, groupValue: e.groupValue);

      yield* listsOrFailure.fold((failure) async* {
        yield ListState.error(
            message: failure.message ?? cSomethingWentWrongMessage);
      }, (lists) async* {
        yield ListState.loaded(lists: lists, groupValue: e.groupValue);
      });
    }, deleteBookFromList: (e) async* {
      yield const ListState.loading();

      final Either<Failure, ReadList> listsOrFailure = await listsRepository
          .deleteBookFromList(book: e.book, groupValue: e.groupValue);

      yield* listsOrFailure.fold((failure) async* {
        yield ListState.error(
            message: failure.message ?? cSomethingWentWrongMessage);
      }, (lists) async* {
        yield ListState.loaded(lists: lists, groupValue: e.groupValue);
      });
    });
  }
}
