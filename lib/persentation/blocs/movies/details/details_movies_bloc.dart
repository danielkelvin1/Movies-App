// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_details_movies.dart';

part 'details_movies_bloc.freezed.dart';
part 'details_movies_event.dart';
part 'details_movies_state.dart';

class DetailsMoviesBloc extends Bloc<DetailsMoviesEvent, DetailsMoviesState> {
  final GetDetailsMovies _getDetailsMovies;
  DetailsMoviesBloc(
    this._getDetailsMovies,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getDetailsMovies.execute(event.id);
      result.fold(
        (error) => emit(_Error(error.message)),
        (movies) => emit(
          _Loaded(movies),
        ),
      );
    });
  }
}
