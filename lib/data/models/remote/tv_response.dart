import 'package:freezed_annotation/freezed_annotation.dart';
import 'tv_model.dart';

part 'tv_response.freezed.dart';
part 'tv_response.g.dart';

@freezed
abstract class TvResponse with _$TvResponse {
  const TvResponse._();

  const factory TvResponse({
    required int page,
    required List<TvModel> results,
  }) = _TvResponse;

  factory TvResponse.fromJson(Map<String, dynamic> json) =>
      _$TvResponseFromJson(json);
}
