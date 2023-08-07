import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/utils/failure.dart';

abstract class TvRepository {
  Future<Either<Failure, List<Tv>>> getTrending();
  Future<Either<Failure, List<Tv>>> getAiringToday();
  Future<Either<Failure, List<Tv>>> getOnTheAir();
  Future<Either<Failure, List<Tv>>> getPopular();
  Future<Either<Failure, List<Tv>>> getTopRated();
}
