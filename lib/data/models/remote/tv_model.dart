import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';

part 'tv_model.freezed.dart';
part 'tv_model.g.dart';

@immutable
@freezed
abstract class TvModel with _$TvModel {
  const TvModel._();

  const factory TvModel({
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "created_by") List<dynamic>? createdBy,
    @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
    @JsonKey(name: "first_air_date") DateTime? firstAirDate,
    List<GenreModel>? genres,
    String? homepage,
    int? id,
    @JsonKey(name: "in_production") bool? inProduction,
    List<String>? languages,
    @JsonKey(name: "last_air_date") DateTime? lastAirDate,
    @JsonKey(name: "last_episode_to_air") TEpisodeToAirModel? lastEpisodeToAir,
    String? name,
    @JsonKey(name: "next_episode_to_air") TEpisodeToAirModel? nextEpisodeToAir,
    @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
    @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
    String? overview,
    double? popularity,
    @JsonKey(name: "poster_path") String? posterPath,
    String? status,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
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
      lastEpisodeToAir: lastEpisodeToAir?.toEntity(),
      name: name,
      nextEpisodeToAir: nextEpisodeToAir?.toEntity(),
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
abstract class GenreModel with _$GenreModel {
  const GenreModel._();

  const factory GenreModel({
    int? id,
    String? name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Genre toEntity() => Genre(
        id: id,
        name: name,
      );
}

@immutable
@freezed
abstract class TEpisodeToAirModel with _$TEpisodeToAirModel {
  const TEpisodeToAirModel._();

  const factory TEpisodeToAirModel({
    int? id,
    String? name,
    String? overview,
    @JsonKey(name: "vote_average") int? voteAverage,
    @JsonKey(name: "vote_count") int? voteCount,
    @JsonKey(name: "air_date") DateTime? airDate,
    @JsonKey(name: "episode_number") int? episodeNumber,
    @JsonKey(name: "episode_type") String? episodeType,
    @JsonKey(name: "production_code") String? productionCode,
    int? runtime,
    @JsonKey(name: "season_number") int? seasonNumber,
    @JsonKey(name: "show_id") int? showId,
    @JsonKey(name: "still_path") String? stillPath,
  }) = _TEpisodeToAirModel;

  factory TEpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      _$TEpisodeToAirModelFromJson(json);

  TEpisodeToAir toEntity() => TEpisodeToAir(
        airDate: airDate,
        episodeNumber: episodeNumber,
        episodeType: episodeType,
        id: id,
        name: name,
        overview: overview,
        productionCode: productionCode,
        runtime: runtime,
        seasonNumber: seasonNumber,
        showId: showId,
        stillPath: stillPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
