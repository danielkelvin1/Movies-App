// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/change_book_mark_tv.dart';
import 'package:movies_app/domain/usecase/get_is_book_mark_tv.dart';

part 'is_book_mark_tv_bloc.freezed.dart';
part 'is_book_mark_tv_event.dart';
part 'is_book_mark_tv_state.dart';

class IsBookMarkTvBloc extends Bloc<IsBookMarkTvEvent, IsBookMarkTvState> {
  final GetIsBookMarkTv _getIsBookMarkTv;
  final ChangeBookMarkTv _changeBookMarkTv;
  IsBookMarkTvBloc(
    this._getIsBookMarkTv,
    this._changeBookMarkTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) {
      emit(const _Loading());
      final result = _getIsBookMarkTv.execute(event.id);
      result.fold(
        (error) => emit(_Error(error.message)),
        (isBookMark) => emit(
          _Loaded(isBookMark),
        ),
      );
    });

    on<_Change>(
      (event, emit) {
        emit(const _Loading());
        final result = _changeBookMarkTv.execute(event.id, event.tv);
        result.fold(
          (error) => _Error(error.message),
          (isBookMark) => emit(
            _Loaded(isBookMark),
          ),
        );
      },
    );
  }
}
