import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/repositories/tv_repository.dart';
import 'package:movies_app/domain/usecase/change_book_mark_tv.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late TvRepository mockRepository;
  late ChangeBookMarkTv usecase;

  setUp(() {
    mockRepository = MockTvRepository();
    usecase = ChangeBookMarkTv(mockRepository);
  });

  group('Change Bookmark Tv', () {
    group('execute', () {
      test('Change the bookmark status and get its latest status', () {
        //arrange
        when(mockRepository.changeBookMark(1, testTvDetails))
            .thenAnswer((realInvocation) => const Right(true));
        //act
        final result = usecase.execute(1, testTvDetails);
        //expect
        expect(result, const Right(true));
      });
    });
  });
}
