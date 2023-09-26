import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_is_book_mark_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late GetIsBookMarkMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = GetIsBookMarkMovies(mockRepository);
  });

  group('Get Is Book Mark Movies', () {
    group('execute', () {
      test('whether or not to get book marks', () {
        //arrange
        when(mockRepository.isBookMark(1))
            .thenAnswer((realInvocation) => const Right(true));
        //act
        final result = usecase.execute(1);
        //expect
        expect(result, const Right(true));
      });
    });
  });
}
