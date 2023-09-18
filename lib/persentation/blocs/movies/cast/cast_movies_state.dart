part of 'cast_movies_bloc.dart';

@freezed
class CastMoviesState with _$CastMoviesState {
  const factory CastMoviesState.initial() = _Initial;
  const factory CastMoviesState.loading() = _Loading;
  const factory CastMoviesState.loaded(List<CastMovie> cast) = _Loaded;
  const factory CastMoviesState.error(String message) = _Error;
}
