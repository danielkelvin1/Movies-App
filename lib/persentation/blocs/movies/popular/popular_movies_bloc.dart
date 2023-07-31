// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_popular_movies.dart';

part 'popular_movies_bloc.freezed.dart';
part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final GetPopularMovies _getPopularMovies;

  PopularMoviesBloc(
    this._getPopularMovies,
  ) : super(_Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getPopularMovies.execute();

      result.fold((failure) => emit(_Error(failure.message)), (data) {
        emit(_Loaded(data));
      });
    });
  }
}
