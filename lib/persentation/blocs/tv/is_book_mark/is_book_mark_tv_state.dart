part of 'is_book_mark_tv_bloc.dart';

@freezed
class IsBookMarkTvState with _$IsBookMarkTvState {
  const factory IsBookMarkTvState.initial() = _Initial;
  const factory IsBookMarkTvState.loading() = _Loading;
  const factory IsBookMarkTvState.loaded(bool isBookMark) = _Loaded;
  const factory IsBookMarkTvState.error(String message) = _Error;
}
