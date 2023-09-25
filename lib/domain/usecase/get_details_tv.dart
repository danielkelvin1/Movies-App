import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetDetailsTv {
  final TvRepository repository;

  GetDetailsTv(this.repository);

  Future<Either<Failure, Tv>> execute(int id) => repository.getDetails(id);
}
