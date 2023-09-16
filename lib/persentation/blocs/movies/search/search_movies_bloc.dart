// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/usecase/get_search_movies.dart';

import '../../../../domain/entities/movie.dart';

part 'search_movies_bloc.freezed.dart';
part 'search_movies_event.dart';
part 'search_movies_state.dart';

class SearchMoviesBloc extends Bloc<SearchMoviesEvent, SearchMoviesState> {
  final GetSearchMovies _getSearchMovies;
  int _page = 0;
  SearchMoviesBloc(
    this._getSearchMovies,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      _page = 1;
      final result = await _getSearchMovies.execute(_page, event.search);
      result.fold(
        (failure) => emit(_Error(failure.message)),
        (movies) {
          if (movies.length >= 20) {
            emit(_Loaded(movies, true));
          } else {
            emit(_Loaded(movies, false));
          }
        },
      );
    });

    on<_GetNext>((event, emit) async {
      if ((state as _Loaded).hasNext) {
        _page++;
        final result = await _getSearchMovies.execute(_page, event.search);
        result.fold(
          (failure) => emit(_Error(failure.message)),
          (movies) {
            if (movies.length >= 20) {
              emit(_Loaded([...(state as _Loaded).movies, ...movies], true));
            } else {
              emit(_Loaded([...(state as _Loaded).movies, ...movies], false));
            }
          },
        );
      }
    });
  }
}
