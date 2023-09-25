part of 'is_book_mark_tv_bloc.dart';

@freezed
class IsBookMarkTvEvent with _$IsBookMarkTvEvent {
  const factory IsBookMarkTvEvent.get(int id) = _Get;
  const factory IsBookMarkTvEvent.change(int id, Tv tv) = _Change;
}
