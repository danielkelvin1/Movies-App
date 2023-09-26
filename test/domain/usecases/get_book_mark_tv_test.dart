import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_book_mark_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetBookMarkTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetBookMarkTv(mockRepository);
  });

  final tTv = <Tv>[];

  group('Get BookMark Tv', () {
    group('execute', () {
      test('Get tv list from repisotory', () {
        //arrange
        when(mockRepository.getBookMark())
            .thenAnswer((realInvocation) => Right(tTv));
        //act
        final result = usecase.execute();
        //expect
        expect(result, Right(tTv));
      });
    });
  });
}
