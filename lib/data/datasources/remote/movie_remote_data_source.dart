import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/data/models/remote/cast_movie_model.dart';
import 'package:movies_app/service/api_service.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getNowPlaying();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getTopRated();
  Future<List<MovieModel>> getUpcoming();
  Future<List<MovieModel>> getSearch(int page, String search);
  Future<MovieModel> getDetail(int id);
  Future<List<CastMovieModel>> getCast(int id);
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiService apiService;

  MovieRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<MovieModel>> getTrending() {
    return apiService.getTrendingMovies();
  }

  @override
  Future<List<MovieModel>> getNowPlaying() {
    return apiService.getNowPlayingMovies();
  }

  @override
  Future<List<MovieModel>> getPopular() {
    return apiService.getPopularMovies();
  }

  @override
  Future<List<MovieModel>> getTopRated() {
    return apiService.getTopRatedMovies();
  }

  @override
  Future<List<MovieModel>> getUpcoming() {
    return apiService.getUpcomingMovies();
  }

  @override
  Future<List<MovieModel>> getSearch(int page, String search) {
    return apiService.getSearchMovies(page, search);
  }

  @override
  Future<List<CastMovieModel>> getCast(int id) {
    return apiService.getCastMovie(id);
  }

  @override
  Future<MovieModel> getDetail(int id) {
    return apiService.getDetailsMovie(id);
  }
}
