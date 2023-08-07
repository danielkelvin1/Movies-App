part of 'on_the_air_tv_bloc.dart';

@freezed
class OnTheAirTvState with _$OnTheAirTvState {
  const factory OnTheAirTvState.initial() = _Initial;
  const factory OnTheAirTvState.loading() = _Loading;
  const factory OnTheAirTvState.loaded(List<Tv> tv) = _Loaded;
  const factory OnTheAirTvState.error(String message) = _Error;
}
