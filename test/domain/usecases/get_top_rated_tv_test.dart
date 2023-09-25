import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_top_rated_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetTopRatedTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetTopRatedTv(repository: mockRepository);
  });

  final tTv = <Tv>[];

  group('Get Top Rated Tv', () {
    group('execute', () {
      test(
          'should get list of tv from the repository when execute function is called',
          () async {
        //arrage
        when(mockRepository.getTopRated())
            .thenAnswer((realInvocation) async => Right(tTv));
        //act
        final result = await usecase.execute();
        //expect
        expect(result, Right(tTv));
      });
    });
  });
}
