import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/entities/cast_movie.dart';
import 'package:movies_app/utils/failure.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getTrending();
  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>> getPopular();
  Future<Either<Failure, List<Movie>>> getTopRated();
  Future<Either<Failure, List<Movie>>> getUpcoming();
  Future<Either<Failure, List<Movie>>> getSearch(int page, String search);
  Future<Either<Failure, Movie>> getDetails(int id);
  Future<Either<Failure, List<CastMovie>>> getCast(int id);
  Either<Failure, bool> isBookMark(int id);
  Either<Failure, bool> changeBookMark(int id, Movie movie);
  Either<Failure, List<Movie>> getBookMark();
}
