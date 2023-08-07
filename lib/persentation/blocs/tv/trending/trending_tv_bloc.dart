import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/domain/usecase/get_trending_tv.dart';

part 'trending_tv_event.dart';
part 'trending_tv_state.dart';
part 'trending_tv_bloc.freezed.dart';

class TrendingTvBloc extends Bloc<TrendingTvEvent, TrendingTvState> {
  final GetTrendingTv _getTrendingTv;

  TrendingTvBloc(this._getTrendingTv) : super(_Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      final result = await _getTrendingTv.execute();

      result.fold(
        (error) => emit(_Error(error.message)),
        (data) => emit(
          _Loaded(data),
        ),
      );
    });
  }
}
