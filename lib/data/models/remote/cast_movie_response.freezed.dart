// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastMovieResponse _$CastMovieResponseFromJson(Map<String, dynamic> json) {
  return _CastMovieResponse.fromJson(json);
}

/// @nodoc
mixin _$CastMovieResponse {
  int get id => throw _privateConstructorUsedError;
  List<CastMovieModel> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastMovieResponseCopyWith<CastMovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastMovieResponseCopyWith<$Res> {
  factory $CastMovieResponseCopyWith(
          CastMovieResponse value, $Res Function(CastMovieResponse) then) =
      _$CastMovieResponseCopyWithImpl<$Res, CastMovieResponse>;
  @useResult
  $Res call({int id, List<CastMovieModel> cast});
}

/// @nodoc
class _$CastMovieResponseCopyWithImpl<$Res, $Val extends CastMovieResponse>
    implements $CastMovieResponseCopyWith<$Res> {
  _$CastMovieResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastMovieModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastMovieResponseCopyWith<$Res>
    implements $CastMovieResponseCopyWith<$Res> {
  factory _$$_CastMovieResponseCopyWith(_$_CastMovieResponse value,
          $Res Function(_$_CastMovieResponse) then) =
      __$$_CastMovieResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<CastMovieModel> cast});
}

/// @nodoc
class __$$_CastMovieResponseCopyWithImpl<$Res>
    extends _$CastMovieResponseCopyWithImpl<$Res, _$_CastMovieResponse>
    implements _$$_CastMovieResponseCopyWith<$Res> {
  __$$_CastMovieResponseCopyWithImpl(
      _$_CastMovieResponse _value, $Res Function(_$_CastMovieResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
  }) {
    return _then(_$_CastMovieResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastMovieModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastMovieResponse implements _CastMovieResponse {
  const _$_CastMovieResponse(
      {required this.id, required final List<CastMovieModel> cast})
      : _cast = cast;

  factory _$_CastMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CastMovieResponseFromJson(json);

  @override
  final int id;
  final List<CastMovieModel> _cast;
  @override
  List<CastMovieModel> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'CastMovieResponse(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastMovieResponse &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastMovieResponseCopyWith<_$_CastMovieResponse> get copyWith =>
      __$$_CastMovieResponseCopyWithImpl<_$_CastMovieResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastMovieResponseToJson(
      this,
    );
  }
}

abstract class _CastMovieResponse implements CastMovieResponse {
  const factory _CastMovieResponse(
      {required final int id,
      required final List<CastMovieModel> cast}) = _$_CastMovieResponse;

  factory _CastMovieResponse.fromJson(Map<String, dynamic> json) =
      _$_CastMovieResponse.fromJson;

  @override
  int get id;
  @override
  List<CastMovieModel> get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CastMovieResponseCopyWith<_$_CastMovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
