part of 'book_mark_tv_bloc.dart';

@freezed
class BookMarkTvState with _$BookMarkTvState {
  const factory BookMarkTvState.initial() = _Initial;
  const factory BookMarkTvState.loading() = _Loading;
  const factory BookMarkTvState.loaded(List<Tv> tv) = _Loaded;
  const factory BookMarkTvState.error(String message) = _Error;
}
