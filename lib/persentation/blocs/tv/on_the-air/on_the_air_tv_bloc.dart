// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_on_the_air_tv.dart';

part 'on_the_air_tv_bloc.freezed.dart';
part 'on_the_air_tv_event.dart';
part 'on_the_air_tv_state.dart';

class OnTheAirTvBloc extends Bloc<OnTheAirTvEvent, OnTheAirTvState> {
  final GetOnTheAirTv _getOnTheAirTv;

  OnTheAirTvBloc(
    this._getOnTheAirTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getOnTheAirTv.execute();
      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(
          _Loaded(tv),
        ),
      );
    });
  }
}
