import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_top_rated_movies.dart';

part 'top_rated_movies_event.dart';
part 'top_rated_movies_state.dart';
part 'top_rated_movies_bloc.freezed.dart';

class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final GetTopRatedMovies _getTopRatedMovies;

  TopRatedMoviesBloc(this._getTopRatedMovies) : super(_Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getTopRatedMovies.execute();

      result.fold((failure) => emit(_Error(failure.message)), (data) {
        emit(_Loaded(data));
      });
    });
  }
}
