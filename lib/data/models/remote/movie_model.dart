// To parse this JSON data, do
//
//     final movieModel = movieModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@immutable
@freezed
abstract class MovieModel with _$MovieModel {
  const MovieModel._();
  const factory MovieModel({
    bool? adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "belongs_to_collection") dynamic? belongsToCollection,
    int? budget,
    List<GenreModel>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "original_title") String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "release_date") DateTime? releaseDate,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
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
abstract class GenreModel with _$GenreModel {
  const GenreModel._();
  const factory GenreModel({
    int? id,
    String? name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Genre toEntity() => Genre(id: id, name: name);
}
