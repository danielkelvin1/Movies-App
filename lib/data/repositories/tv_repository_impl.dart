import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/data/datasources/remote/tv_remote_date_source.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/utils/exception.dart';
import 'package:movies_app/utils/failure.dart';

class TvRepositoryImpl extends TvRepository {
  final TvRemoteDataSource remoteDataSource;

  TvRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Tv>>> getTrending() async {
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

  Future<Either<Failure, List<Tv>>> getAiringToday() async {
    try {
      final result = await remoteDataSource.getAiringToday();
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

  Future<Either<Failure, List<Tv>>> getOnTheAir() async {
    try {
      final result = await remoteDataSource.getOnTheAir();
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

  Future<Either<Failure, List<Tv>>> getPopular() async {
    try {
      final result = await remoteDataSource.getPopular();
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

  Future<Either<Failure, List<Tv>>> getTopRated() async {
    try {
      final result = await remoteDataSource.getTopRated();
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
