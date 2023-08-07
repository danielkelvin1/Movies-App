part of 'trending_tv_bloc.dart';

@freezed
class TrendingTvState with _$TrendingTvState {
  const factory TrendingTvState.initial() = _Initial;
  const factory TrendingTvState.loading() = _Loading;
  const factory TrendingTvState.loaded(List<Tv> tv) = _Loaded;
  const factory TrendingTvState.error(String message) = _Error;
}
