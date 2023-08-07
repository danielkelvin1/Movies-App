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
      ..registerFactory<TvRemoteDataSource>(
          (c) => TvRemoteDataSourceImpl(c<ApiService>('api_service')),
          name: 'tv_remote')
      ..registerFactory<MovieRepository>(
          (c) => MovieRepositoryImpl(
              remoteDataSource: c<MovieRemoteDataSource>('movie_remote')),
          name: 'movie_repo')
      ..registerFactory<TvRepository>(
          (c) => TvRepositoryImpl(c<TvRemoteDataSource>('tv_remote')),
          name: 'tv_repo')
      ..registerSingleton(
          (c) => GetTrendingMovies(c<MovieRepository>('movie_repo')),
          name: 'get_trending_movies')
      ..registerSingleton(
          (c) => GetNowPlayingMovies(c<MovieRepository>('movie_repo')),
          name: 'get_now_playing_movies')
      ..registerSingleton(
          (c) => GetPopularMovies(c<MovieRepository>('movie_repo')),
          name: 'get_popular_movies')
      ..registerSingleton(
          (c) => GetTopRatedMovies(c<MovieRepository>('movie_repo')),
          name: 'get_top_rated_movies')
      ..registerSingleton(
          (c) => GetUpcomingMovies(c<MovieRepository>('movie_repo')),
          name: 'get_upcoming_movies')
      ..registerSingleton(
          (c) => GetTrendingTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_trending_tv')
      ..registerSingleton(
          (c) => GetAiringTodayTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_airing_today_tv')
      ..registerSingleton(
          (c) => GetOnTheAirTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_on_the_air_tv')
      ..registerSingleton(
          (c) => GetPopularTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_popular_tv')
      ..registerSingleton(
          (c) => GetTopRatedTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_top_rated_tv')
      ..registerFactory(
          (c) => TrendingMovieBloc(c<GetTrendingMovies>('get_trending_movies')))
      ..registerFactory((c) =>
          NowPlayingMovieBloc(c<GetNowPlayingMovies>('get_now_playing_movies')))
      ..registerFactory(
          (c) => PopularMoviesBloc(c<GetPopularMovies>('get_popular_movies')))
      ..registerFactory((c) =>
          TopRatedMoviesBloc(c<GetTopRatedMovies>('get_top_rated_movies')))
      ..registerFactory((c) =>
          UpcomingMoviesBloc(c<GetUpcomingMovies>('get_upcoming_movies')))
      ..registerFactory(
          (c) => TrendingTvBloc(c<GetTrendingTv>('get_trending_tv')))
      ..registerFactory(
          (c) => AiringTodayTvBloc(c<GetAiringTodayTv>('get_airing_today_tv')))
      ..registerFactory(
          (c) => OnTheAirTvBloc(c<GetOnTheAirTv>('get_on_the_air_tv')))
      ..registerFactory((c) => PopularTvBloc(c<GetPopularTv>('get_popular_tv')))
      ..registerFactory(
          (c) => TopRatedTvBloc(c<GetTopRatedTv>('get_top_rated_tv')));
  }
}
