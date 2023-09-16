import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/data/config/dio_module.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/data/datasources/remote/tv_remote_date_source.dart';
import 'package:movies_app/data/repositories/movie_repository_impl.dart';
import 'package:movies_app/data/repositories/tv_repository_impl.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_airing_today_tv.dart';
import 'package:movies_app/domain/usecase/get_now_playing_movies.dart';
import 'package:movies_app/domain/usecase/get_on_the_air_tv.dart';
import 'package:movies_app/domain/usecase/get_popular_movies.dart';
import 'package:movies_app/domain/usecase/get_popular_tv.dart';
import 'package:movies_app/domain/usecase/get_search_tv.dart';
import 'package:movies_app/domain/usecase/get_top_rated_movies.dart';
import 'package:movies_app/domain/usecase/get_top_rated_tv.dart';
import 'package:movies_app/domain/usecase/get_trending_movies.dart';
import 'package:movies_app/domain/usecase/get_search_movies.dart';
import 'package:movies_app/domain/usecase/get_trending_tv.dart';
import 'package:movies_app/domain/usecase/get_upcoming_movies.dart';
import 'package:movies_app/persentation/blocs/movies/now_playing/now_playing_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/popular/popular_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/search/search_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/top_rated/top_rated_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/trending/trending_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/upcoming/upcoming_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/airing_today/airing_today_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/on_the-air/on_the_air_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/popular/popular_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/top_rated/top_rated_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/trending/trending_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/search/serach_tv_bloc.dart';
import 'package:movies_app/service/api_service.dart';

part 'injection.g.dart';

abstract class Injection {
  @Register.singleton(Dio, from: DioModule, name: 'dio')
  @Register.factory(ApiService, resolvers: {Dio: 'dio'}, name: 'api_service')
  //data ssource
  @Register.factory(MovieRemoteDataSource,
      from: MovieRemoteDataSourceImpl,
      resolvers: {ApiService: 'api_service'},
      name: 'movie_remote')
  @Register.factory(TvRemoteDataSource,
      from: TvRemoteDataSourceImpl,
      resolvers: {ApiService: 'api_service'},
      name: 'tv_remote')
  // repositroy
  @Register.factory(MovieRepository,
      from: MovieRepositoryImpl,
      resolvers: {MovieRemoteDataSource: 'movie_remote'},
      name: 'movie_repo')
  @Register.factory(
    TvRepository,
    from: TvRepositoryImpl,
    resolvers: {TvRemoteDataSource: 'tv_remote'},
    name: 'tv_repo',
  )
  // use case
  @Register.singleton(GetTrendingMovies,
      resolvers: {MovieRepository: 'movie_repo'}, name: 'get_trending_movies')
  @Register.singleton(GetNowPlayingMovies,
      resolvers: {MovieRepository: 'movie_repo'},
      name: 'get_now_playing_movies')
  @Register.singleton(GetPopularMovies,
      resolvers: {MovieRepository: 'movie_repo'}, name: 'get_popular_movies')
  @Register.singleton(GetTopRatedMovies,
      resolvers: {MovieRepository: 'movie_repo'}, name: 'get_top_rated_movies')
  @Register.singleton(GetUpcomingMovies,
      resolvers: {MovieRepository: 'movie_repo'}, name: 'get_upcoming_movies')
  @Register.singleton(GetSearchMovies,
      resolvers: {MovieRepository: 'movie_repo'}, name: 'get_search_movies')
  @Register.singleton(GetSearchTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_search_tv')
  @Register.singleton(GetTrendingTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_trending_tv')
  @Register.singleton(GetAiringTodayTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_airing_today_tv')
  @Register.singleton(GetOnTheAirTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_on_the_air_tv')
  @Register.singleton(GetPopularTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_popular_tv')
  @Register.singleton(GetTopRatedTv,
      resolvers: {TvRepository: 'tv_repo'}, name: 'get_top_rated_tv')
  // bloc
  @Register.factory(SearchMoviesBloc,
      resolvers: {GetSearchMovies: 'get_search_movies'})
  @Register.factory(TrendingMovieBloc,
      resolvers: {GetTrendingMovies: 'get_trending_movies'})
  @Register.factory(NowPlayingMovieBloc,
      resolvers: {GetNowPlayingMovies: 'get_now_playing_movies'})
  @Register.factory(PopularMoviesBloc,
      resolvers: {GetPopularMovies: 'get_popular_movies'})
  @Register.factory(TopRatedMoviesBloc,
      resolvers: {GetTopRatedMovies: 'get_top_rated_movies'})
  @Register.factory(UpcomingMoviesBloc,
      resolvers: {GetUpcomingMovies: 'get_upcoming_movies'})
  @Register.factory(SearchTvBloc, resolvers: {GetSearchTv: 'get_search_tv'})
  @Register.factory(TrendingTvBloc,
      resolvers: {GetTrendingTv: 'get_trending_tv'})
  @Register.factory(AiringTodayTvBloc,
      resolvers: {GetAiringTodayTv: 'get_airing_today_tv'})
  @Register.factory(OnTheAirTvBloc,
      resolvers: {GetOnTheAirTv: 'get_on_the_air_tv'})
  @Register.factory(PopularTvBloc, resolvers: {GetPopularTv: 'get_popular_tv'})
  @Register.factory(TopRatedTvBloc,
      resolvers: {GetTopRatedTv: 'get_top_rated_tv'})
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
