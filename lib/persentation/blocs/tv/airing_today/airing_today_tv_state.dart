part of 'airing_today_tv_bloc.dart';

@freezed
class AiringTodayTvState with _$AiringTodayTvState {
  const factory AiringTodayTvState.initial() = _Initial;
  const factory AiringTodayTvState.loading() = _Loading;
  const factory AiringTodayTvState.loaded(List<Tv> tv) = _Loaded;
  const factory AiringTodayTvState.error(String message) = _Error;
}
