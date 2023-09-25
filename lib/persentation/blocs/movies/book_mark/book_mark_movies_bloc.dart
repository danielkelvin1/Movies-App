import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_book_mark_movies.dart';

part 'book_mark_movies_event.dart';
part 'book_mark_movies_state.dart';
part 'book_mark_movies_bloc.freezed.dart';

class BookMarkMoviesBloc
    extends Bloc<BookMarkMoviesEvent, BookMarkMoviesState> {
  final GetBookMarkMovies _getBookMarkMovies;
  BookMarkMoviesBloc(this._getBookMarkMovies) : super(const _Initial()) {
    on<_Get>((event, emit) {
      emit(const _Loading());
      final result = _getBookMarkMovies.execute();

      result.fold(
        (error) => emit(_Error(error.message)),
        (movies) => emit(
          _Loaded(movies),
        ),
      );
    });
  }
}
