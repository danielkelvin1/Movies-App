import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/cast_tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetCastTv {
  final TvRepository repository;

  GetCastTv(this.repository);

  Future<Either<Failure, List<CastTv>>> execute(int id) =>
      repository.getCast(id);
}
