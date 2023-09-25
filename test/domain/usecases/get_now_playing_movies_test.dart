import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_now_playing_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetNowPlayingMovies usecase;
  late MovieRepository mockMoviesRepository;
  setUp(() {
    mockMoviesRepository = MockMovieRepository();
    usecase = GetNowPlayingMovies(mockMoviesRepository);
  });

  final tMovies = <Movie>[];

  group('Get Now Playing Movies', () {
    group('execute', () {
      test(
          'should get list of movies from the repository when execute function is called',
          () async {
        //arrange
        when(mockMoviesRepository.getNowPlaying()).thenAnswer(
          (realInvocation) async => Right(tMovies),
        );
        //act
        final result = await usecase.execute();
        //asssert
        expect(result, Right(tMovies));
      });
    });
  });
}
