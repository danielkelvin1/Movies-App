import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class ChangeBookMarkTv {
  final TvRepository _repository;

  ChangeBookMarkTv(this._repository);

  Either<Failure, bool> execute(int id, Tv tv) =>
      _repository.changeBookMark(id, tv);
}
