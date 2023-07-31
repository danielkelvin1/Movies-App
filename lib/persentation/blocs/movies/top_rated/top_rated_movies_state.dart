part of 'top_rated_movies_bloc.dart';

@freezed
class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState.initial() = _Initial;
  const factory TopRatedMoviesState.loading() = _Loading;
  const factory TopRatedMoviesState.loaded(List<Movie> movies) = _Loaded;
  const factory TopRatedMoviesState.error(String message) = _Error;
}
