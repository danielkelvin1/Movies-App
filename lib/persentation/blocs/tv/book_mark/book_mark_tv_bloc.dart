// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_book_mark_tv.dart';

part 'book_mark_tv_bloc.freezed.dart';
part 'book_mark_tv_event.dart';
part 'book_mark_tv_state.dart';

class BookMarkTvBloc extends Bloc<BookMarkTvEvent, BookMarkTvState> {
  final GetBookMarkTv _getBookMarkTv;
  BookMarkTvBloc(
    this._getBookMarkTv,
  ) : super(const _Initial()) {
    on<BookMarkTvEvent>((event, emit) {
      emit(const _Loading());
      final result = _getBookMarkTv.execute();
      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(
          _Loaded(tv),
        ),
      );
    });
  }
}
