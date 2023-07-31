import 'package:dio/dio.dart';
import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/data/models/remote/movie_response.dart';
import 'package:movies_app/utils/constants.dart';
import 'package:movies_app/utils/exception.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  //Movies Api Servvice
  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await dio.get(
      '$baseUrl/trending/movie/day',
    );

    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await dio.get('$baseUrl/movie/now_playing');
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<MovieModel>> getPopularMovies() async {
    final response = await dio.get('$baseUrl/movie/popular');
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await dio.get('$baseUrl/movie/top_rated');
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<MovieModel>> getUpcomingMovies() async {
    final response = await dio.get('$baseUrl/movie/upcoming');
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }
}
