// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_details_tv.dart';

part 'details_tv_bloc.freezed.dart';
part 'details_tv_event.dart';
part 'details_tv_state.dart';

class DetailsTvBloc extends Bloc<DetailsTvEvent, DetailsTvState> {
  final GetDetailsTv _getDetailsTv;
  DetailsTvBloc(
    this._getDetailsTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getDetailsTv.execute(event.id);

      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(_Loaded(tv)),
      );
    });
  }
}
