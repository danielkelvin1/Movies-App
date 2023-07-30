import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie_model.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
abstract class MovieResponse with _$MovieResponse {
  const MovieResponse._();

  const factory MovieResponse({
    required int page,
    required List<MovieModel> results,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
