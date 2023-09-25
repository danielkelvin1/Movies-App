import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/cast_tv.dart';

part 'cast_tv_model.freezed.dart';
part 'cast_tv_model.g.dart';

@immutable
@freezed
abstract class CastTvModel with _$CastTvModel {
  const CastTvModel._();

  const factory CastTvModel(
      {String? name,
      @JsonKey(name: 'profile_path') String? profilePath}) = _CastTvModel;

  factory CastTvModel.fromJson(Map<String, dynamic> json) =>
      _$CastTvModelFromJson(json);

  CastTv toEntity() => CastTv(name: name, profilePath: profilePath);
}
