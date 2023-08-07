// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_airing_today_tv.dart';

part 'airing_today_tv_bloc.freezed.dart';
part 'airing_today_tv_event.dart';
part 'airing_today_tv_state.dart';

class AiringTodayTvBloc extends Bloc<AiringTodayTvEvent, AiringTodayTvState> {
  final GetAiringTodayTv _getAiringTodayTv;

  AiringTodayTvBloc(
    this._getAiringTodayTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getAiringTodayTv.execute();
      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(
          _Loaded(tv),
        ),
      );
    });
  }
}
