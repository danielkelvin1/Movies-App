part of 'serach_tv_bloc.dart';

@freezed
class SearchTvState with _$SearchTvState {
  const factory SearchTvState.initial() = _Initial;
  const factory SearchTvState.loading() = _Loading;
  const factory SearchTvState.loaded(List<Tv> tv, bool hasNext) = _Loaded;
  const factory SearchTvState.error(String message) = _Error;
}
