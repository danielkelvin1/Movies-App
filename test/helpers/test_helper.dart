import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movies_app/data/datasources/remote/tv_remote_date_source.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';

@GenerateMocks([
  MovieRepository,
  TvRepository,
  MovieRemoteDataSource,
  TvRemoteDataSource,
])
void main() {}
