// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/entities/cast_movie.dart';
import 'package:movies_app/utils/failure.dart';

class GetCastMovies {
  final MovieRepository repository;
  GetCastMovies(
    this.repository,
  );

  Future<Either<Failure, List<CastMovie>>> execute(int id) =>
      repository.getCast(id);
}
