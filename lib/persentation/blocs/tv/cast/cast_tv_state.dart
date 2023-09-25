part of 'cast_tv_bloc.dart';

@freezed
class CastTvState with _$CastTvState {
  const factory CastTvState.initial() = _Initial;
  const factory CastTvState.loading() = _Loading;
  const factory CastTvState.loaded(List<CastTv> castTvList) = _Loaded;
  const factory CastTvState.error(String message) = _Error;
}
