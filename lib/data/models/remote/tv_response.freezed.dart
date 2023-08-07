// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvResponse _$TvResponseFromJson(Map<String, dynamic> json) {
  return _TvResponse.fromJson(json);
}

/// @nodoc
mixin _$TvResponse {
  int get page => throw _privateConstructorUsedError;
  List<TvModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvResponseCopyWith<TvResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvResponseCopyWith<$Res> {
  factory $TvResponseCopyWith(
          TvResponse value, $Res Function(TvResponse) then) =
      _$TvResponseCopyWithImpl<$Res, TvResponse>;
  @useResult
  $Res call({int page, List<TvModel> results});
}

/// @nodoc
class _$TvResponseCopyWithImpl<$Res, $Val extends TvResponse>
    implements $TvResponseCopyWith<$Res> {
  _$TvResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TvResponseCopyWith<$Res>
    implements $TvResponseCopyWith<$Res> {
  factory _$$_TvResponseCopyWith(
          _$_TvResponse value, $Res Function(_$_TvResponse) then) =
      __$$_TvResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<TvModel> results});
}

/// @nodoc
class __$$_TvResponseCopyWithImpl<$Res>
    extends _$TvResponseCopyWithImpl<$Res, _$_TvResponse>
    implements _$$_TvResponseCopyWith<$Res> {
  __$$_TvResponseCopyWithImpl(
      _$_TvResponse _value, $Res Function(_$_TvResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$_TvResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvResponse extends _TvResponse {
  const _$_TvResponse(
      {required this.page, required final List<TvModel> results})
      : _results = results,
        super._();

  factory _$_TvResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TvResponseFromJson(json);

  @override
  final int page;
  final List<TvModel> _results;
  @override
  List<TvModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TvResponse(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvResponseCopyWith<_$_TvResponse> get copyWith =>
      __$$_TvResponseCopyWithImpl<_$_TvResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvResponseToJson(
      this,
    );
  }
}

abstract class _TvResponse extends TvResponse {
  const factory _TvResponse(
      {required final int page,
      required final List<TvModel> results}) = _$_TvResponse;
  const _TvResponse._() : super._();

  factory _TvResponse.fromJson(Map<String, dynamic> json) =
      _$_TvResponse.fromJson;

  @override
  int get page;
  @override
  List<TvModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_TvResponseCopyWith<_$_TvResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
