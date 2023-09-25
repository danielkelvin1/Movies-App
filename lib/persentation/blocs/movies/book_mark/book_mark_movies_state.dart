part of 'book_mark_movies_bloc.dart';

@freezed
class BookMarkMoviesState with _$BookMarkMoviesState {
  const factory BookMarkMoviesState.initial() = _Initial;
  const factory BookMarkMoviesState.loading() = _Loading;
  const factory BookMarkMoviesState.loaded(List<Movie> movies) = _Loaded;
  const factory BookMarkMoviesState.error(String message) = _Error;
}
