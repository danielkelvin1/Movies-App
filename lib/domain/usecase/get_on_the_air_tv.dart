import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetOnTheAirTv {
  final TvRepository repository;

  GetOnTheAirTv({required this.repository});

  Future<Either<Failure, List<Tv>>> execute() => repository.getOnTheAir();
}
