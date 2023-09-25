import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetBookMarkTv {
  final TvRepository _repository;

  GetBookMarkTv(this._repository);

  Either<Failure, List<Tv>> execute() => _repository.getBookMark();
}
