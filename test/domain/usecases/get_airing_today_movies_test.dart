import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_airing_today_tv.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetAiringTodayTv usecase;
  late MockTvRepository repository;

  setUp(() {
    repository = MockTvRepository();
    usecase = GetAiringTodayTv(repository: repository);
  });

  final tv = <Tv>[];

  group("Get Airing Today Tv", () {
    group("execute", () {
      test(
          "should get list of tv from the repository when execute function is called",
          () async {
        // arrange
        when(repository.getAiringToday()).thenAnswer((_) async => Right(tv));
        // act
        final result = Right(tv);
        // assert
        expect(result, usecase.execute());
      });
    });
  });
}
