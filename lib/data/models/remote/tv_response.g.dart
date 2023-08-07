// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvResponse _$$_TvResponseFromJson(Map<String, dynamic> json) =>
    _$_TvResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => TvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TvResponseToJson(_$_TvResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
