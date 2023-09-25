// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieModelAdapter extends TypeAdapter<MovieModel> {
  @override
  final int typeId = 1;

  @override
  MovieModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieModel(
      adult: fields[0] as bool?,
      backdropPath: fields[1] as String?,
      belongsToCollection: fields[2] as dynamic,
      budget: fields[3] as int?,
      genres: (fields[4] as List?)?.cast<GenreModel>(),
      homepage: fields[5] as String?,
      id: fields[6] as int?,
      imdbId: fields[7] as String?,
      originalLanguage: fields[8] as String?,
      originalTitle: fields[9] as String?,
      overview: fields[10] as String?,
      popularity: fields[11] as double?,
      posterPath: fields[12] as String?,
      releaseDate: fields[13] as String?,
      revenue: fields[14] as int?,
      runtime: fields[15] as int?,
      status: fields[16] as String?,
      tagline: fields[17] as String?,
      title: fields[18] as String?,
      video: fields[19] as bool?,
      voteAverage: fields[20] as double?,
      voteCount: fields[21] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieModel obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.adult)
      ..writeByte(1)
      ..write(obj.backdropPath)
      ..writeByte(2)
      ..write(obj.belongsToCollection)
      ..writeByte(3)
      ..write(obj.budget)
      ..writeByte(4)
      ..write(obj.genres)
      ..writeByte(5)
      ..write(obj.homepage)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.imdbId)
      ..writeByte(8)
      ..write(obj.originalLanguage)
      ..writeByte(9)
      ..write(obj.originalTitle)
      ..writeByte(10)
      ..write(obj.overview)
      ..writeByte(11)
      ..write(obj.popularity)
      ..writeByte(12)
      ..write(obj.posterPath)
      ..writeByte(13)
      ..write(obj.releaseDate)
      ..writeByte(14)
      ..write(obj.revenue)
      ..writeByte(15)
      ..write(obj.runtime)
      ..writeByte(16)
      ..write(obj.status)
      ..writeByte(17)
      ..write(obj.tagline)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.video)
      ..writeByte(20)
      ..write(obj.voteAverage)
      ..writeByte(21)
      ..write(obj.voteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenreModelAdapter extends TypeAdapter<GenreModel> {
  @override
  final int typeId = 2;

  @override
  GenreModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenreModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GenreModel obj) {
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
      other is GenreModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      belongsToCollection: json['belongs_to_collection'],
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdbId'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'belongs_to_collection': instance.belongsToCollection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdbId': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
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
