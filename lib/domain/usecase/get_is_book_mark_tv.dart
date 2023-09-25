import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetIsBookMarkTv {
  final TvRepository _repository;

  GetIsBookMarkTv(this._repository);

  Either<Failure, bool> execute(int id) => _repository.isBookMark(id);
}
