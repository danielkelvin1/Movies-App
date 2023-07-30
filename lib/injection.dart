import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/data/config/dio_module.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/data/repositories/move_repository_impl.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_trending_movies.dart';
import 'package:movies_app/persentation/blocs/bloc/trending_movie_bloc.dart';
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
  // bloc
  @Register.factory(TrendingMovieBloc,
      resolvers: {GetTrendingMovies: 'get_trending_movies'})
  void configure();
}

class AppModule {
  static void setup() {
    var injection = _$Injection();
    injection.configure();
  }
}
