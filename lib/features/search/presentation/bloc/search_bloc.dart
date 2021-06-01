import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/book.dart';
import '../../domain/entities/books.dart';
import '../../domain/repositories/i_search_repository.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

const PAGE_LIMIT = 100;

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository searchRepository;

  SearchBloc({@required this.searchRepository})
      : super(const _SearchStateInitial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      search: (e) async* {
        yield const SearchState.loading();

        final Either<Failure, Books> booksOrFailure = await searchRepository
            .searchBooks(searchString: e.text ?? "", page: 0);

        yield* booksOrFailure.fold((failure) async* {
          yield SearchState.error(
              message: failure.message ?? cSomethingWentWrongMessage);
        }, (books) async* {
          yield SearchState.loaded(books: books);
        });
      },
      fetchNextPage: (e) async* {
        if (state is _SearchStateLoaded) {
          final Books currentBooksSearch = (state as _SearchStateLoaded).books;
          if (currentBooksSearch.books.length < currentBooksSearch.numFound) {
            final int page = currentBooksSearch.books.length ~/ PAGE_LIMIT;
            final booksSearchOption = await searchRepository.searchBooks(
                searchString: e.text, page: page + 1);
            yield* booksSearchOption.fold((failure) async* {
              yield SearchState.error(
                  message: failure.message ?? cSomethingWentWrongMessage);
            }, (newSearch) async* {
              final List<Book> books = [];
              books.addAll(currentBooksSearch.books);
              books.addAll(newSearch.books);
              final Books booksSearched =
                  currentBooksSearch.copyWith(books: books);
              yield SearchState.loaded(books: booksSearched);
            });
          }
        }
      },
    );
  }
}
