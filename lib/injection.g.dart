// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injection.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injection extends Injection {
  @override
  void configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton<Dio>((c) => DioModule(), name: 'dio')
      ..registerFactory((c) => ApiService(c<Dio>('dio')), name: 'api_service')
      ..registerFactory<MovieRemoteDataSource>(
          (c) => MovieRemoteDataSourceImpl(c<ApiService>('api_service')),
          name: 'movie_remote')
      ..registerFactory<MovieRepository>(
          (c) => MovieRepositoryImpl(
              remoteDataSource: c<MovieRemoteDataSource>('movie_remote')),
          name: 'movie_repo')
      ..registerSingleton(
          (c) => GetTrendingMovies(c<MovieRepository>('movie_repo')),
          name: 'get_trending_movies')
      ..registerFactory((c) =>
          TrendingMovieBloc(c<GetTrendingMovies>('get_trending_movies')));
  }
}
