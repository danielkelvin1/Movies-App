// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/movie.dart';

import 'package:movies_app/domain/usecase/change_book_mark_movies.dart';
import 'package:movies_app/domain/usecase/get_is_book_mark_movies.dart';

part 'is_book_mark_bloc.freezed.dart';
part 'is_book_mark_event.dart';
part 'is_book_mark_state.dart';

class IsBookMarkMovieBloc
    extends Bloc<IsBookMarkMovieEvent, IsBookMarkMovieState> {
  final GetIsBookMarkMovies _getIsBookMarkMovies;
  final ChangeBookMarkMovies _changeBookMarkMovies;
  IsBookMarkMovieBloc(
    this._getIsBookMarkMovies,
    this._changeBookMarkMovies,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) {
      emit(const _Loading());
      final result = _getIsBookMarkMovies.execute(event.id);
      result.fold(
        (error) => emit(_Error(error.message)),
        (isBookMark) => emit(
          _Loaded(isBookMark),
        ),
      );
    });
    on<_Change>(
      (event, emit) {
        emit(const _Loading());
        final result = _changeBookMarkMovies.execute(event.id, event.movie);
        result.fold(
          (error) => emit(_Error(error.message)),
          (isBookMark) => emit(
            _Loaded(isBookMark),
          ),
        );
      },
    );
  }
}
