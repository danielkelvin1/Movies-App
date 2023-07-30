import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/utils/failure.dart';
import '../entities/movie.dart';

class GetTrendingMovies {
  final MovieRepository repository;

  GetTrendingMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getTrending();
  }
}
