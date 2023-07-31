import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/data/config/dio_module.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/data/repositories/move_repository_impl.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_now_playing_movies.dart';
import 'package:movies_app/domain/usecase/get_popular_movies.dart';
import 'package:movies_app/domain/usecase/get_top_rated_movies.dart';
import 'package:movies_app/domain/usecase/get_trending_movies.dart';
import 'package:movies_app/domain/usecase/get_upcoming_movies.dart';
import 'package:movies_app/persentation/blocs/movies/now_playing/now_playing_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/popular/popular_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/top_rated/top_rated_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/trending/trending_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/upcoming/upcoming_movies_bloc.dart';
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
  // repositroy
  @Register.factory(MovieRepository,
      from: MovieRepositoryImpl,
      resolvers: {MovieRemoteDataSource: 'movie_remote'},
      name: 'movie_repo')
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
  // bloc
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
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
