import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_trending_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetTrendingTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetTrendingTv(repository: mockRepository);
  });

  final tTv = <Tv>[];

  group('Get Trending Tv', () {
    group('execute', () {
      test(
          'should get list of tv from the repository when execute function is called',
          () async {
        //arrange
        when(mockRepository.getTrending())
            .thenAnswer((realInvocation) async => Right(tTv));
        //act
        final result = await usecase.execute();
        //expect
        expect(result, Right(tTv));
      });
    });
  });
}
