// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/cast_movie.dart';
import 'package:movies_app/domain/usecase/get_cast_movies.dart';

part 'cast_movies_bloc.freezed.dart';
part 'cast_movies_event.dart';
part 'cast_movies_state.dart';

class CastMoviesBloc extends Bloc<CastMoviesEvent, CastMoviesState> {
  final GetCastMovies _getCastMovies;
  CastMoviesBloc(
    this._getCastMovies,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getCastMovies.execute(event.id);

      result.fold(
        (erorr) => emit(_Error(erorr.message)),
        (cast) => emit(
          _Loaded(cast),
        ),
      );
    });
  }
}
