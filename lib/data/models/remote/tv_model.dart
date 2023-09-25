import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:movies_app/domain/entities/tv.dart';

part 'tv_model.freezed.dart';
part 'tv_model.g.dart';

@immutable
@freezed
@HiveType(typeId: 3)
class TvModel with _$TvModel {
  const TvModel._();

  const factory TvModel({
    @HiveField(0) @JsonKey(name: "backdrop_path") String? backdropPath,
    @HiveField(1) @JsonKey(name: "created_by") List<dynamic>? createdBy,
    @HiveField(2) @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
    @HiveField(3) @JsonKey(name: "first_air_date") String? firstAirDate,
    @HiveField(4) List<TvGenreModel>? genres,
    @HiveField(5) String? homepage,
    @HiveField(6) int? id,
    @HiveField(7) @JsonKey(name: "in_production") bool? inProduction,
    @HiveField(8) List<String>? languages,
    @HiveField(9) @JsonKey(name: "last_air_date") String? lastAirDate,
    @HiveField(10) @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
    @HiveField(11) @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
    @HiveField(12) String? overview,
    @HiveField(13) double? popularity,
    @HiveField(14) @JsonKey(name: 'original_name') String? originalName,
    @HiveField(15) @JsonKey(name: "poster_path") String? posterPath,
    @HiveField(16) String? status,
    @HiveField(17) @JsonKey(name: "vote_average") double? voteAverage,
    @HiveField(18) @JsonKey(name: "vote_count") int? voteCount,
  }) = _TvModel;

  factory TvModel.fromJson(Map<String, dynamic> json) =>
      _$TvModelFromJson(json);

  Tv toEntity() => Tv(
      backdropPath: backdropPath,
      createdBy: createdBy,
      episodeRunTime: episodeRunTime,
      firstAirDate: firstAirDate,
      genres: genres?.map((e) => e.toEntity()).toList(),
      homepage: homepage,
      id: id,
      inProduction: inProduction,
      languages: languages,
      lastAirDate: lastAirDate,
      originalName: originalName,
      numberOfEpisodes: numberOfEpisodes,
      numberOfSeasons: numberOfSeasons,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      status: status,
      voteAverage: voteAverage,
      voteCount: voteCount);
}

@freezed
@HiveType(typeId: 4)
class TvGenreModel with _$TvGenreModel {
  const TvGenreModel._();

  const factory TvGenreModel({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
  }) = _TvGenreModel;

  factory TvGenreModel.fromJson(Map<String, dynamic> json) =>
      _$TvGenreModelFromJson(json);

  Genre toEntity() => Genre(
        id: id,
        name: name,
      );
}
