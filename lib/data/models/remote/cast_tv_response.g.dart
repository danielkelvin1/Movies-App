// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_tv_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CastvResponse _$$_CastvResponseFromJson(Map<String, dynamic> json) =>
    _$_CastvResponse(
      id: json['id'] as int,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => CastTvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CastvResponseToJson(_$_CastvResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
