part of 'search_movies_bloc.dart';

@freezed
class SearchMoviesState with _$SearchMoviesState {
  const factory SearchMoviesState.initial() = _Initial;
  const factory SearchMoviesState.loading() = _Loading;
  const factory SearchMoviesState.loaded(List<Movie> movies, bool hasNext) =
      _Loaded;
  const factory SearchMoviesState.error(String message) = _Error;
}
