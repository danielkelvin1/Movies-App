import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_popular_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetPopularTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetPopularTv(repository: mockRepository);
  });

  final tTv = <Tv>[];

  group('Get Popular tv', () {
    group('execute', () {
      test(
          'should get list of tv from the repository when execute function is called',
          () async {
        //arrage
        when(mockRepository.getPopular())
            .thenAnswer((realInvocation) async => Right(tTv));
        //act
        final result = await usecase.execute();
        //expect
        expect(result, Right(tTv));
      });
    });
  });
}
