// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetAiringTodayTv {
  final TvRepository repository;
  GetAiringTodayTv({
    required this.repository,
  });

  Future<Either<Failure, List<Tv>>> execute() {
    return repository.getAiringToday();
  }
}
