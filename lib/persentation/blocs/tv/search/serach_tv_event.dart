part of 'serach_tv_bloc.dart';

@freezed
class SearchTvEvent with _$SearchTvEvent {
  const factory SearchTvEvent.get(String search) = _Get;
  const factory SearchTvEvent.getNext(String search) = _GetNext;
}
