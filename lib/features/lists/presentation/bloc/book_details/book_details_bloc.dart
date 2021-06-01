import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/text_constants.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/book_list.dart';
import '../../../domain/repositories/i_lists_repository.dart';

part 'book_details_bloc.freezed.dart';
part 'book_details_event.dart';
part 'book_details_state.dart';

@injectable
class BookDetailsBloc extends Bloc<BookDetailsEvent, BookDetailsState> {
  final IListsRepository listsRepository;

  BookDetailsBloc({@required this.listsRepository})
      : super(const _BookDetailsStateInitial());

  @override
  Stream<BookDetailsState> mapEventToState(
    BookDetailsEvent event,
  ) async* {
    yield* event.map(loadBook: (e) async* {
      yield const BookDetailsState.loading();

      final Either<Failure, BookList> bookOrFailure =
          await listsRepository.loadBook(book: e.bookList);

      yield* bookOrFailure.fold((failure) async* {
        yield BookDetailsState.error(
            message: failure.message ?? cSomethingWentWrongMessage);
      }, (book) async* {
        yield BookDetailsState.loaded(book: book);
      });
    }, addNote: (e) async* {
      yield const BookDetailsState.loading();

      final Either<Failure, BookList> bookOrFailure =
          await listsRepository.addNoteToBook(note: e.note, book: e.book);

      yield* bookOrFailure.fold((failure) async* {
        yield BookDetailsState.error(
            message: failure.message ?? cSomethingWentWrongMessage);
      }, (book) async* {
        yield BookDetailsState.loaded(book: book);
      });
    });
  }
}
