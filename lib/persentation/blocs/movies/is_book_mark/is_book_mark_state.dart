part of 'is_book_mark_bloc.dart';

@freezed
class IsBookMarkMovieState with _$IsBookMarkMovieState {
  const factory IsBookMarkMovieState.initial() = _Initial;
  const factory IsBookMarkMovieState.loading() = _Loading;
  const factory IsBookMarkMovieState.loaded(bool isBookMark) = _Loaded;
  const factory IsBookMarkMovieState.error(String message) = _Error;
}
