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
          (c) => GetSearchMovies(repository: c<MovieRepository>('movie_repo')),
          name: 'get_search_movies')
      ..registerSingleton(
          (c) => GetDetailsMovies(c<MovieRepository>('movie_repo')),
          name: 'get_details_movies')
      ..registerSingleton(
          (c) => GetCastMovies(c<MovieRepository>('movie_repo')),
          name: 'get_cast_movies')
      ..registerSingleton(
          (c) => GetIsBookMarkMovies(c<MovieRepository>('movie_repo')),
          name: 'get_is_book_mark_movies')
      ..registerSingleton(
          (c) => ChangeBookMarkMovies(c<MovieRepository>('movie_repo')),
          name: 'change_book_mark_movies')
      ..registerSingleton(
          (c) => GetBookMarkMovies(c<MovieRepository>('movie_repo')),
          name: 'get_book_mark_movies')
      ..registerSingleton(
          (c) => GetSearchTv(repository: c<TvRepository>('tv_repo')),
          name: 'get_search_tv')
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
      ..registerSingleton((c) => GetDetailsTv(c<TvRepository>('tv_repo')),
          name: 'get_details_tv')
      ..registerSingleton((c) => GetCastTv(c<TvRepository>('tv_repo')),
          name: 'get_cast_tv')
      ..registerSingleton((c) => GetIsBookMarkTv(c<TvRepository>('tv_repo')),
          name: 'get_is_book_mark_tv')
      ..registerSingleton((c) => ChangeBookMarkTv(c<TvRepository>('tv_repo')),
          name: 'change_book_mark_tv')
      ..registerSingleton((c) => GetBookMarkTv(c<TvRepository>('tv_repo')),
          name: 'get_book_mark_tv')
      ..registerFactory(
          (c) => SearchMoviesBloc(c<GetSearchMovies>('get_search_movies')))
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
          (c) => DetailsMoviesBloc(c<GetDetailsMovies>('get_details_movies')))
      ..registerFactory(
          (c) => CastMoviesBloc(c<GetCastMovies>('get_cast_movies')))
      ..registerFactory((c) => IsBookMarkMovieBloc(
          c<GetIsBookMarkMovies>('get_is_book_mark_movies'),
          c<ChangeBookMarkMovies>('change_book_mark_movies')))
      ..registerFactory((c) =>
          BookMarkMoviesBloc(c<GetBookMarkMovies>('get_book_mark_movies')))
      ..registerFactory((c) => SearchTvBloc(c<GetSearchTv>('get_search_tv')))
      ..registerFactory(
          (c) => TrendingTvBloc(c<GetTrendingTv>('get_trending_tv')))
      ..registerFactory(
          (c) => AiringTodayTvBloc(c<GetAiringTodayTv>('get_airing_today_tv')))
      ..registerFactory(
          (c) => OnTheAirTvBloc(c<GetOnTheAirTv>('get_on_the_air_tv')))
      ..registerFactory((c) => PopularTvBloc(c<GetPopularTv>('get_popular_tv')))
      ..registerFactory(
          (c) => TopRatedTvBloc(c<GetTopRatedTv>('get_top_rated_tv')))
      ..registerFactory((c) => DetailsTvBloc(c<GetDetailsTv>('get_details_tv')))
      ..registerFactory((c) => CastTvBloc(c<GetCastTv>('get_cast_tv')))
      ..registerFactory((c) => IsBookMarkTvBloc(
          c<GetIsBookMarkTv>('get_is_book_mark_tv'),
          c<ChangeBookMarkTv>('change_book_mark_tv')))
      ..registerFactory(
          (c) => BookMarkTvBloc(c<GetBookMarkTv>('get_book_mark_tv')));
  }
}
