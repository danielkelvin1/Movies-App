import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_details_tv.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetDetailsTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetDetailsTv(mockRepository);
  });

  const tId = 234;

  test('should get tvdetail from the repository', () async {
    //arrange
    when(mockRepository.getDetails(tId))
        .thenAnswer((realInvocation) async => const Right(testTvDetails));
    //act
    final result = await usecase.execute(tId);
    //expect
    expect(result, const Right(testTvDetails));
  });
}
