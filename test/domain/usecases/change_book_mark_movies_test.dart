import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/change_book_mark_movies.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late ChangeBookMarkMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = ChangeBookMarkMovies(mockRepository);
  });

  group('Change Bookmark Movies', () {
    group('execute', () {
      test('Change the bookmark status and get its latest status', () {
        //arrange
        when(mockRepository.changeBookMark(1, testMovieDetails))
            .thenAnswer((realInvocation) => const Right(true));
        //act
        final result = usecase.execute(1, testMovieDetails);
        //expect
        expect(result, const Right(true));
      });
    });
  });
}
