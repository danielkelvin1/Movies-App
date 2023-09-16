// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvModel _$$_TvModelFromJson(Map<String, dynamic> json) => _$_TvModel(
      backdropPath: json['backdrop_path'] as String?,
      createdBy: json['created_by'] as List<dynamic>?,
      episodeRunTime: (json['episode_run_time'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      firstAirDate: json['first_air_date'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      inProduction: json['in_production'] as bool?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastAirDate: json['last_air_date'] == null
          ? null
          : DateTime.parse(json['last_air_date'] as String),
      lastEpisodeToAir: json['last_episode_to_air'] == null
          ? null
          : TEpisodeToAirModel.fromJson(
              json['last_episode_to_air'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nextEpisodeToAir: json['next_episode_to_air'] == null
          ? null
          : TEpisodeToAirModel.fromJson(
              json['next_episode_to_air'] as Map<String, dynamic>),
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      status: json['status'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_TvModelToJson(_$_TvModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'created_by': instance.createdBy,
      'episode_run_time': instance.episodeRunTime,
      'first_air_date': instance.firstAirDate,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'in_production': instance.inProduction,
      'languages': instance.languages,
      'last_air_date': instance.lastAirDate?.toIso8601String(),
      'last_episode_to_air': instance.lastEpisodeToAir,
      'name': instance.name,
      'next_episode_to_air': instance.nextEpisodeToAir,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'status': instance.status,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

_$_GenreModel _$$_GenreModelFromJson(Map<String, dynamic> json) =>
    _$_GenreModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GenreModelToJson(_$_GenreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_TEpisodeToAirModel _$$_TEpisodeToAirModelFromJson(
        Map<String, dynamic> json) =>
    _$_TEpisodeToAirModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      voteAverage: json['vote_average'] as int?,
      voteCount: json['vote_count'] as int?,
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeNumber: json['episode_number'] as int?,
      episodeType: json['episode_type'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      showId: json['show_id'] as int?,
      stillPath: json['still_path'] as String?,
    );

Map<String, dynamic> _$$_TEpisodeToAirModelToJson(
        _$_TEpisodeToAirModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'air_date': instance.airDate?.toIso8601String(),
      'episode_number': instance.episodeNumber,
      'episode_type': instance.episodeType,
      'production_code': instance.productionCode,
      'runtime': instance.runtime,
      'season_number': instance.seasonNumber,
      'show_id': instance.showId,
      'still_path': instance.stillPath,
    };
