import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/cast_movie.dart';

part 'cast_movie_model.freezed.dart';
part 'cast_movie_model.g.dart';

@immutable
@freezed
abstract class CastMovieModel with _$CastMovieModel {
  const CastMovieModel._();
  const factory CastMovieModel(
      {String? name,
      @JsonKey(name: "profile_path") String? profilePath}) = _CastMovieModel;

  factory CastMovieModel.fromJson(Map<String, dynamic> json) =>
      _$CastMovieModelFromJson(json);

  CastMovie toEntity() => CastMovie(
        name: name,
        profilePath: profilePath,
      );
}
