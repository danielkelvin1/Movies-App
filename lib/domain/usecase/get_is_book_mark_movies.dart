import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetIsBookMarkMovies {
  final MovieRepository _repository;

  GetIsBookMarkMovies(this._repository);

  Either<Failure, bool> execute(int id) => _repository.isBookMark(id);
}
