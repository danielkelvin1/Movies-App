part of 'details_movies_bloc.dart';

@freezed
class DetailsMoviesState with _$DetailsMoviesState {
  const factory DetailsMoviesState.initial() = _Initial;
  const factory DetailsMoviesState.loading() = _Loading;
  const factory DetailsMoviesState.loaded(Movie movie) = _Loaded;
  const factory DetailsMoviesState.error(String message) = _Error;
}
