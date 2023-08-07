// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_popular_tv.dart';

part 'popular_tv_bloc.freezed.dart';
part 'popular_tv_event.dart';
part 'popular_tv_state.dart';

class PopularTvBloc extends Bloc<PopularTvEvent, PopularTvState> {
  final GetPopularTv _getPopularTv;

  PopularTvBloc(
    this._getPopularTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getPopularTv.execute();

      result.fold(
        (error) => emit(_Error(error.message)),
        (tv) => emit(
          _Loaded(tv),
        ),
      );
    });
  }
}
