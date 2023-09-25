import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetBookMarkMovies {
  final MovieRepository _repository;

  GetBookMarkMovies(this._repository);

  Either<Failure, List<Movie>> execute() => _repository.getBookMark();
}
