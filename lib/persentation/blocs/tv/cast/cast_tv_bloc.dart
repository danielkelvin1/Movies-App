// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/cast_tv.dart';
import 'package:movies_app/domain/usecase/get_cast_tv.dart';

part 'cast_tv_bloc.freezed.dart';
part 'cast_tv_event.dart';
part 'cast_tv_state.dart';

class CastTvBloc extends Bloc<CastTvEvent, CastTvState> {
  final GetCastTv _getCastTv;
  CastTvBloc(
    this._getCastTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getCastTv.execute(event.id);

      result.fold(
        (error) => emit(_Error(error.message)),
        (castTvList) => emit(
          _Loaded(castTvList),
        ),
      );
    });
  }
}
