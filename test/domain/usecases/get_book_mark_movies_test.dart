import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_book_mark_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late GetBookMarkMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = GetBookMarkMovies(mockRepository);
  });

  const tMovies = <Movie>[];

  group('Get BookMark Movies ', () {
    group('execute', () {
      test('should get the movie list from the repository', () async {
        //arrange
        when(mockRepository.getBookMark())
            .thenAnswer((realInvocation) => const Right(tMovies));
        //act
        final result = usecase.execute();
        //expect
        expect(result, const Right(tMovies));
      });
    });
  });
}
