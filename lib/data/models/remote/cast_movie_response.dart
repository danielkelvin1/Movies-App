import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast_movie_model.dart';

part 'cast_movie_response.freezed.dart';
part 'cast_movie_response.g.dart';

@freezed
class CastMovieResponse with _$CastMovieResponse {
  const factory CastMovieResponse({
    required int id,
    required List<CastMovieModel> cast,
  }) = _CastMovieResponse;

  factory CastMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$CastMovieResponseFromJson(json);
}
