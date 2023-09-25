import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/data/models/remote/cast_tv_model.dart';

part 'cast_tv_response.freezed.dart';
part 'cast_tv_response.g.dart';

@freezed
class CastTvResponse with _$CastTvResponse {
  const factory CastTvResponse({
    required int id,
    required List<CastTvModel> cast,
  }) = _CastvResponse;

  factory CastTvResponse.fromJson(Map<String, dynamic> json) =>
      _$CastTvResponseFromJson(json);
}
