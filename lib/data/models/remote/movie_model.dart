// To parse this JSON data, do
//
//     final movieModel = movieModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@immutable
@freezed
@HiveType(typeId: 1)
class MovieModel with _$MovieModel {
  const MovieModel._();
  const factory MovieModel({
    @HiveField(0) bool? adult,
    @HiveField(1) @JsonKey(name: "backdrop_path") String? backdropPath,
    @HiveField(2)
    @JsonKey(name: "belongs_to_collection")
    dynamic belongsToCollection,
    @HiveField(3) int? budget,
    @HiveField(4) List<GenreModel>? genres,
    @HiveField(5) String? homepage,
    @HiveField(6) int? id,
    @HiveField(7) String? imdbId,
    @HiveField(8) @JsonKey(name: "original_language") String? originalLanguage,
    @HiveField(9) @JsonKey(name: "original_title") String? originalTitle,
    @HiveField(10) String? overview,
    @HiveField(11) double? popularity,
    @HiveField(12) @JsonKey(name: "poster_path") String? posterPath,
    @HiveField(13) @JsonKey(name: "release_date") String? releaseDate,
    @HiveField(14) int? revenue,
    @HiveField(15) int? runtime,
    @HiveField(16) String? status,
    @HiveField(17) String? tagline,
    @HiveField(18) String? title,
    @HiveField(19) bool? video,
    @HiveField(20) @JsonKey(name: "vote_average") double? voteAverage,
    @HiveField(21) @JsonKey(name: "vote_count") int? voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Movie toEntity() => Movie(
        adult: adult,
        backdropPath: backdropPath,
        belongsToCollection: belongsToCollection,
        budget: budget,
        genres: genres?.map((e) => e.toEntity()).toList(),
        homepage: homepage,
        id: id,
        imdbId: imdbId,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        revenue: revenue,
        runtime: runtime,
        status: status,
        tagline: tagline,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}

@immutable
@freezed
@HiveType(typeId: 2)
class GenreModel with _$GenreModel {
  const GenreModel._();
  const factory GenreModel({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Genre toEntity() => Genre(id: id, name: name);
}
