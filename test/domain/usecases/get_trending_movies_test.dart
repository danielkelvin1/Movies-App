import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_trending_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late GetTrendingMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = GetTrendingMovies(mockRepository);
  });

  final tMovies = <Movie>[];

  group('Get Trending Movies', () {
    group('execute', () {
      test(
          'should get list of movies from the repository when execute function is called',
          () async {
        //arrage
        when(mockRepository.getTrending())
            .thenAnswer((realInvocation) async => Right(tMovies));
        //act
        final result = await usecase.execute();
        //assert
        expect(result, Right(tMovies));
      });
    });
  });
}
