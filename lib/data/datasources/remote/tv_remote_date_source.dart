import 'package:movies_app/data/models/remote/cast_tv_model.dart';
import 'package:movies_app/data/models/remote/tv_model.dart';
import 'package:movies_app/service/api_service.dart';

abstract class TvRemoteDataSource {
  Future<List<TvModel>> getTrending();
  Future<List<TvModel>> getAiringToday();
  Future<List<TvModel>> getOnTheAir();
  Future<List<TvModel>> getPopular();
  Future<List<TvModel>> getTopRated();
  Future<List<TvModel>> getSearch(int page, String search);
  Future<TvModel> getDetails(int id);
  Future<List<CastTvModel>> getCast(int id);
}

class TvRemoteDataSourceImpl extends TvRemoteDataSource {
  final ApiService apiService;

  TvRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<TvModel>> getTrending() {
    return apiService.getTrendingTv();
  }

  @override
  Future<List<TvModel>> getOnTheAir() {
    return apiService.getOnTheAirTv();
  }

  @override
  Future<List<TvModel>> getPopular() {
    return apiService.getPopularTv();
  }

  @override
  Future<List<TvModel>> getTopRated() {
    return apiService.getTopRatedTv();
  }

  @override
  Future<List<TvModel>> getAiringToday() {
    return apiService.getAiringTodayTv();
  }

  @override
  Future<List<TvModel>> getSearch(int page, String search) {
    return apiService.getSearchTv(page, search);
  }

  @override
  Future<List<CastTvModel>> getCast(int id) {
    return apiService.getCastTv(id);
  }

  @override
  Future<TvModel> getDetails(int id) {
    return apiService.getDetailsTv(id);
  }
}
