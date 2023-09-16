part of 'search_movies_bloc.dart';

@freezed
class SearchMoviesEvent with _$SearchMoviesEvent {
  const factory SearchMoviesEvent.get(String search) = _Get;
  const factory SearchMoviesEvent.getNext(String search) = _GetNext;
}
