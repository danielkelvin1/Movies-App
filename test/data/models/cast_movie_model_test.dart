import 'package:flutter_test/flutter_test.dart';
import 'package:movies_app/data/models/remote/cast_movie_model.dart';
import 'package:movies_app/domain/entities/cast_movie.dart';

void main() {
  const tCastMovieModel =
      CastMovieModel(name: 'diana', profilePath: '/diana.jpg');
  const tCastMovie = CastMovie(name: 'diana', profilePath: '/diana.jpg');
  const tCastMovieJson = {'name': 'diana', 'profile_path': '/diana.jpg'};

  test('should be a subclass of Cast Movie entity', () {
    final result = tCastMovieModel.toEntity();
    expect(result, tCastMovie);
  });

  test('should be a subclass of Cast Movie Json', () {
    final result = tCastMovieModel.toJson();
    expect(result, tCastMovieJson);
  });
}
