// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/domain/entities/tv.dart';

import 'package:movies_app/domain/usecase/get_search_tv.dart';

part 'serach_tv_bloc.freezed.dart';
part 'serach_tv_event.dart';
part 'serach_tv_state.dart';

class SearchTvBloc extends Bloc<SearchTvEvent, SearchTvState> {
  final GetSearchTv _getSearchTv;
  int _page = 0;
  SearchTvBloc(
    this._getSearchTv,
  ) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      _page = 1;
      final result = await _getSearchTv.execute(_page, event.search);
      result.fold((failure) => emit(_Error(failure.message)), (tv) {
        if (tv.length >= 20) {
          return emit(_Loaded(tv, true));
        } else {
          return emit(_Loaded(tv, false));
        }
      });
    });

    on<_GetNext>((event, emit) async {
      if ((state as _Loaded).hasNext) {
        _page++;
        final result = await _getSearchTv.execute(_page, event.search);
        result.fold((failure) => emit(_Error(failure.message)), (tv) {
          if (tv.length >= 20) {
            return emit(_Loaded([...(state as _Loaded).tv, ...tv], true));
          } else {
            return emit(_Loaded([...(state as _Loaded).tv, ...tv], false));
          }
        });
      }
    });
  }
}
