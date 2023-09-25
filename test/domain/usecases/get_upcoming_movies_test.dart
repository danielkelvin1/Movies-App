import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_upcoming_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late GetUpcomingMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = GetUpcomingMovies(mockRepository);
  });

  final tMovies = <Movie>[];

  group('Get Upcoming Movies', () {
    group('execute', () {
      test(
          'should get list of movies from the repository when execute function is called',
          () async {
        //arrage
        when(mockRepository.getUpcoming())
            .thenAnswer((realInvocation) async => Right(tMovies));
        //act
        final result = await usecase.execute();
        //expect
        expect(result, Right(tMovies));
      });
    });
  });
}
