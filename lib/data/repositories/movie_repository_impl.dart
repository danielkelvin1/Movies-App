import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/data/config/boxes.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/domain/entities/cast_movie.dart';
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

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    try {
      final result = await remoteDataSource.getNowPlaying();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(
            ConnectionFailure('Failed to connect to the network'));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopular() async {
    try {
      final result = await remoteDataSource.getPopular();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(
            ConnectionFailure('Failed to connect to the network'));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRated() async {
    try {
      final result = await remoteDataSource.getTopRated();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(
            ConnectionFailure('Failed to connect to the network'));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcoming() async {
    try {
      final result = await remoteDataSource.getUpcoming();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains('SocketException')) {
        return const Left(
            ConnectionFailure('Failed to connect to the network'));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getSearch(
      int page, String search) async {
    try {
      final result = await remoteDataSource.getSearch(page, search);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains("SocketException")) {
        return const Left(
            ConnectionFailure("failed to connect ot the network"));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<CastMovie>>> getCast(int id) async {
    try {
      final result = await remoteDataSource.getCast(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains("SocketException")) {
        return const Left(
            ConnectionFailure("failed to connect ot the network"));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Future<Either<Failure, Movie>> getDetails(int id) async {
    try {
      final result = await remoteDataSource.getDetail(id);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketDirection {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on DioException catch (e) {
      if (e.error.toString().contains("SocketException")) {
        return const Left(
            ConnectionFailure("failed to connect ot the network"));
      }
      return const Left(ServerFailure(''));
    }
  }

  @override
  Either<Failure, bool> isBookMark(int id) {
    try {
      final box = Boxes.getMovies();
      final result = box.get('$id');
      return Right(result != null ? true : false);
    } catch (e) {
      return const Left(DatabaseFailure('Get Data Failed'));
    }
  }

  @override
  Either<Failure, bool> changeBookMark(int id, Movie movie) {
    try {
      final box = Boxes.getMovies();
      final isThereBookMark = box.get('$id');
      isThereBookMark != null
          ? box.delete('$id')
          : box.put('$id', movie.toMovieModel());

      final result = box.get('$id');
      return Right(result != null ? true : false);
    } catch (e) {
      return const Left(DatabaseFailure('Failed Change Data'));
    }
  }

  @override
  Either<Failure, List<Movie>> getBookMark() {
    try {
      final box = Boxes.getMovies();
      final result = box.values.map((e) => e.toEntity()).toList();
      return (Right(result));
    } catch (e) {
      return const Left(DatabaseFailure('Get Data Failed'));
    }
  }
}
