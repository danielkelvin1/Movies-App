import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/utils/failure.dart';

class ChangeBookMarkMovies {
  final MovieRepository _repository;

  ChangeBookMarkMovies(this._repository);

  Either<Failure, bool> execute(int id, Movie movie) =>
      _repository.changeBookMark(id, movie);
}
