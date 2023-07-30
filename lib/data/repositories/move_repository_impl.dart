import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/utils/exception.dart';
import 'package:movies_app/utils/failure.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Movie>>> getTrending() async {
    try {
      final result = await remoteDataSource.getTrending();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(
            ConnectionFailure('Failed to connect to the network'));
      }
      return const Left(ServerFailure(''));
    }
  }
}
