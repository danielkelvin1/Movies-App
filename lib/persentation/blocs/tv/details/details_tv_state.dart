part of 'details_tv_bloc.dart';

@freezed
class DetailsTvState with _$DetailsTvState {
  const factory DetailsTvState.initial() = _Initial;
  const factory DetailsTvState.loading() = _Loading;
  const factory DetailsTvState.loaded(Tv tv) = _Loaded;
  const factory DetailsTvState.error(String message) = _Error;
}
