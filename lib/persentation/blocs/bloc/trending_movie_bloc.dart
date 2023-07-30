import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_trending_movies.dart';

part 'trending_movie_event.dart';
part 'trending_movie_state.dart';
part 'trending_movie_bloc.freezed.dart';

class TrendingMovieBloc extends Bloc<TrendingMovieEvent, TrendingMovieState> {
  final GetTrendingMovies _getTrendingMovies;

  TrendingMovieBloc(this._getTrendingMovies) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getTrendingMovies.execute();

      result.fold(
        (failure) => emit(_Error(failure.message)),
        (data) => emit(
          _$_Loaded(data),
        ),
      );
    });
  }
}
