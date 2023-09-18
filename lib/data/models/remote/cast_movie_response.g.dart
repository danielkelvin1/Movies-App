// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CastMovieResponse _$$_CastMovieResponseFromJson(Map<String, dynamic> json) =>
    _$_CastMovieResponse(
      id: json['id'] as int,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => CastMovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CastMovieResponseToJson(
        _$_CastMovieResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
