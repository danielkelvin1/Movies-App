// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TvModelAdapter extends TypeAdapter<TvModel> {
  @override
  final int typeId = 3;

  @override
  TvModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvModel(
      backdropPath: fields[0] as String?,
      createdBy: (fields[1] as List?)?.cast<dynamic>(),
      episodeRunTime: (fields[2] as List?)?.cast<int>(),
      firstAirDate: fields[3] as String?,
      genres: (fields[4] as List?)?.cast<TvGenreModel>(),
      homepage: fields[5] as String?,
      id: fields[6] as int?,
      inProduction: fields[7] as bool?,
      languages: (fields[8] as List?)?.cast<String>(),
      lastAirDate: fields[9] as String?,
      numberOfEpisodes: fields[10] as int?,
      numberOfSeasons: fields[11] as int?,
      overview: fields[12] as String?,
      popularity: fields[13] as double?,
      originalName: fields[14] as String?,
      posterPath: fields[15] as String?,
      status: fields[16] as String?,
      voteAverage: fields[17] as double?,
      voteCount: fields[18] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TvModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.backdropPath)
      ..writeByte(1)
      ..write(obj.createdBy)
      ..writeByte(2)
      ..write(obj.episodeRunTime)
      ..writeByte(3)
      ..write(obj.firstAirDate)
      ..writeByte(4)
      ..write(obj.genres)
      ..writeByte(5)
      ..write(obj.homepage)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.inProduction)
      ..writeByte(8)
      ..write(obj.languages)
      ..writeByte(9)
      ..write(obj.lastAirDate)
      ..writeByte(10)
      ..write(obj.numberOfEpisodes)
      ..writeByte(11)
      ..write(obj.numberOfSeasons)
      ..writeByte(12)
      ..write(obj.overview)
      ..writeByte(13)
      ..write(obj.popularity)
      ..writeByte(14)
      ..write(obj.originalName)
      ..writeByte(15)
      ..write(obj.posterPath)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.voteAverage)
      ..writeByte(18)
      ..write(obj.voteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvGenreModelAdapter extends TypeAdapter<TvGenreModel> {
  @override
  final int typeId = 4;

  @override
  TvGenreModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvGenreModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TvGenreModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvGenreModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
          ?.map((e) => TvGenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      inProduction: json['in_production'] as bool?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastAirDate: json['last_air_date'] as String?,
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      originalName: json['original_name'] as String?,
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
      'last_air_date': instance.lastAirDate,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'original_name': instance.originalName,
      'poster_path': instance.posterPath,
      'status': instance.status,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

_$_TvGenreModel _$$_TvGenreModelFromJson(Map<String, dynamic> json) =>
    _$_TvGenreModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TvGenreModelToJson(_$_TvGenreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
