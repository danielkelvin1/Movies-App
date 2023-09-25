import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/cast_tv.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/utils/failure.dart';

abstract class TvRepository {
  Future<Either<Failure, List<Tv>>> getTrending();
  Future<Either<Failure, List<Tv>>> getAiringToday();
  Future<Either<Failure, List<Tv>>> getOnTheAir();
  Future<Either<Failure, List<Tv>>> getPopular();
  Future<Either<Failure, List<Tv>>> getTopRated();
  Future<Either<Failure, List<Tv>>> getSearch(int page, String search);
  Future<Either<Failure, Tv>> getDetails(int id);
  Future<Either<Failure, List<CastTv>>> getCast(int id);
  Either<Failure, bool> isBookMark(int id);
  Either<Failure, bool> changeBookMark(int id, Tv tv);
  Either<Failure, List<Tv>> getBookMark();
}
