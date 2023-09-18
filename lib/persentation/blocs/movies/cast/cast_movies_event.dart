part of 'cast_movies_bloc.dart';

@freezed
class CastMoviesEvent with _$CastMoviesEvent {
  const factory CastMoviesEvent.get(int id) = _Get;
}
