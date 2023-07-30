import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/utils/failure.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getTrending();
}
