import 'package:dio/dio.dart';
import 'package:movies_app/data/models/remote/cast_movie_response.dart';
import 'package:movies_app/data/models/remote/cast_tv_model.dart';
import 'package:movies_app/data/models/remote/cast_tv_response.dart';
import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/data/models/remote/cast_movie_model.dart';
import 'package:movies_app/data/models/remote/movie_response.dart';
import 'package:movies_app/data/models/remote/tv_model.dart';
import 'package:movies_app/data/models/remote/tv_response.dart';
import 'package:movies_app/utils/constants.dart';
import 'package:movies_app/utils/exception.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  //Movies Api Service
  Future<List<MovieModel>> getSearchMovies(int page, String search) async {
    final response = await dio.get(
        "$baseUrl/search/movie?query=$search&include_adult=false&language=en-US&page=$page");
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<MovieModel> getDetailsMovie(int id) async {
    final response = await dio.get("$baseUrl/movie/$id");
    if (response.statusCode == 200) {
      return MovieModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  Future<List<CastMovieModel>> getCastMovie(int id) async {
    final response = await dio.get('$baseUrl/movie/$id/credits');
    if (response.statusCode == 200) {
      return CastMovieResponse.fromJson(response.data).cast;
    } else {
      throw ServerException();
    }
  }

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

  //TV Api Service
  Future<TvModel> getDetailsTv(int id) async {
    final response = await dio.get('$baseUrl/tv/$id?language=en-US');
    if (response.statusCode == 200) {
      return TvModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  Future<List<CastTvModel>> getCastTv(int id) async {
    final response = await dio.get('$baseUrl/tv/$id/credits?language=en-US');
    if (response.statusCode == 200) {
      return CastTvResponse.fromJson(response.data).cast;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getSearchTv(int page, String search) async {
    final response = await dio.get(
        '$baseUrl/search/tv?query=$search&include_adult=false&language=en-US&page=$page');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getTrendingTv() async {
    final response = await dio.get('$baseUrl/trending/tv/day');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getAiringTodayTv() async {
    final response = await dio.get('$baseUrl/tv/airing_today');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getOnTheAirTv() async {
    final response = await dio.get('$baseUrl/tv/on_the_air');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getPopularTv() async {
    final response = await dio.get('$baseUrl/tv/popular');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }

  Future<List<TvModel>> getTopRatedTv() async {
    final response = await dio.get('$baseUrl/tv/top_rated');
    if (response.statusCode == 200) {
      return TvResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }
}
