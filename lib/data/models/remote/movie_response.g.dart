// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponse _$$_MovieResponseFromJson(Map<String, dynamic> json) =>
    _$_MovieResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieResponseToJson(_$_MovieResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
