// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/usecase/get_top_rated_tv.dart';

import '../../../../domain/entities/tv.dart';

part 'top_rated_tv_bloc.freezed.dart';
part 'top_rated_tv_event.dart';
part 'top_rated_tv_state.dart';

class TopRatedTvBloc extends Bloc<TopRatedTvEvent, TopRatedTvState> {
  final GetTopRatedTv _topRatedTv;

  TopRatedTvBloc(
    this._topRatedTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _topRatedTv.execute();

      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(
          _Loaded(tv),
        ),
      );
    });
  }
}
