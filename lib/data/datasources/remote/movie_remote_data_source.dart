import 'dart:io';

import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/service/api_service.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiService apiService;

  MovieRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<MovieModel>> getTrending() {
    return apiService.getTrendingMovies();
  }
}
