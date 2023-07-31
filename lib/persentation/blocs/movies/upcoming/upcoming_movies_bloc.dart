import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/usecase/get_upcoming_movies.dart';

part 'upcoming_movies_event.dart';
part 'upcoming_movies_state.dart';
part 'upcoming_movies_bloc.freezed.dart';

class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, UpcomingMoviesState> {
  final GetUpcomingMovies _getUpcomingMovies;
  UpcomingMoviesBloc(this._getUpcomingMovies) : super(_Initial()) {
    on<_Get>((event, emit) async {
      emit(_Loading());

      final result = await _getUpcomingMovies.execute();

      result.fold((failure) => emit(_Error(failure.message)), (data) {
        emit(_Loaded(data));
      });
    });
  }
}
