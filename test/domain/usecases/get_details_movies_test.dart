import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';
import 'package:movies_app/domain/usecase/get_details_movies.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MovieRepository mockRepository;
  late GetDetailsMovies usecase;

  setUp(() {
    mockRepository = MockMovieRepository();
    usecase = GetDetailsMovies(mockRepository);
  });

  const tId = 1;

  test('should get movie detail from the repository', () async {
    //arrange
    when(mockRepository.getDetails(tId))
        .thenAnswer((realInvocation) async => const Right(testMovieDetails));
    //act
    final result = await usecase.execute(tId);
    //expect
    expect(result, const Right(testMovieDetails));
  });
}
