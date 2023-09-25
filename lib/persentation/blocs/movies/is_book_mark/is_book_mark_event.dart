part of 'is_book_mark_bloc.dart';

@freezed
class IsBookMarkMovieEvent with _$IsBookMarkMovieEvent {
  const factory IsBookMarkMovieEvent.get(int id) = _Get;
  const factory IsBookMarkMovieEvent.change(int id, Movie movie) = _Change;
}
