import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetSearchTv {
  final TvRepository repository;

  GetSearchTv({
    required this.repository,
  });

  Future<Either<Failure, List<Tv>>> execute(int page, String search) =>
      repository.getSearch(page, search);
}
