import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/get_is_book_mark_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late GetIsBookMarkTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = GetIsBookMarkTv(mockRepository);
  });

  group('Get Is Bookmark Tv', () {
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
