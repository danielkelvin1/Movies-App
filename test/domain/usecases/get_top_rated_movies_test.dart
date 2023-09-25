import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_top_rated_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockMovieRepository;
  late GetTopRatedMovies usecase;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetTopRatedMovies(mockMovieRepository);
  });

  final tMovies = <Movie>[];

  group('Get Top Rated Movies', () {
    group('execute', () {
      test(
          'should get list of tv from the repository when execute function is called',
          () async {
        //arrange
        when(mockMovieRepository.getTopRated())
            .thenAnswer((realInvocation) async => Right(tMovies));
        //act
        final result = await usecase.execute();
        //assert
        expect(result, Right(tMovies));
      });
    });
  });
}
