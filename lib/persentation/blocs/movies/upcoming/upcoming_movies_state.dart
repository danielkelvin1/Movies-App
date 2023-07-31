part of 'upcoming_movies_bloc.dart';

@freezed
class UpcomingMoviesState with _$UpcomingMoviesState {
  const factory UpcomingMoviesState.initial() = _Initial;
  const factory UpcomingMoviesState.loading() = _Loading;
  const factory UpcomingMoviesState.loaded(List<Movie> movies) = _Loaded;
  const factory UpcomingMoviesState.error(String message) = _Error;
}
