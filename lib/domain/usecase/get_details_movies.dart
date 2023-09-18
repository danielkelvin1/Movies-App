// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/utils/failure.dart';

class GetDetailsMovies {
  final MovieRepository repository;
  GetDetailsMovies(
    this.repository,
  );

  Future<Either<Failure, Movie>> execute(int id) => repository.getDetails(id);
}
