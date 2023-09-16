// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/utils/failure.dart';

class GetSearchMovies {
  final MovieRepository repository;
  GetSearchMovies({
    required this.repository,
  });

  Future<Either<Failure, List<Movie>>> execute(int page, String search) =>
      repository.getSearch(page, search);
}
