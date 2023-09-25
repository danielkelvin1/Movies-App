// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_tv_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastTvResponse _$CastTvResponseFromJson(Map<String, dynamic> json) {
  return _CastvResponse.fromJson(json);
}

/// @nodoc
mixin _$CastTvResponse {
  int get id => throw _privateConstructorUsedError;
  List<CastTvModel> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastTvResponseCopyWith<CastTvResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastTvResponseCopyWith<$Res> {
  factory $CastTvResponseCopyWith(
          CastTvResponse value, $Res Function(CastTvResponse) then) =
      _$CastTvResponseCopyWithImpl<$Res, CastTvResponse>;
  @useResult
  $Res call({int id, List<CastTvModel> cast});
}

/// @nodoc
class _$CastTvResponseCopyWithImpl<$Res, $Val extends CastTvResponse>
    implements $CastTvResponseCopyWith<$Res> {
  _$CastTvResponseCopyWithImpl(this._value, this._then);

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
              as List<CastTvModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastvResponseCopyWith<$Res>
    implements $CastTvResponseCopyWith<$Res> {
  factory _$$_CastvResponseCopyWith(
          _$_CastvResponse value, $Res Function(_$_CastvResponse) then) =
      __$$_CastvResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<CastTvModel> cast});
}

/// @nodoc
class __$$_CastvResponseCopyWithImpl<$Res>
    extends _$CastTvResponseCopyWithImpl<$Res, _$_CastvResponse>
    implements _$$_CastvResponseCopyWith<$Res> {
  __$$_CastvResponseCopyWithImpl(
      _$_CastvResponse _value, $Res Function(_$_CastvResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
  }) {
    return _then(_$_CastvResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastTvModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastvResponse implements _CastvResponse {
  const _$_CastvResponse(
      {required this.id, required final List<CastTvModel> cast})
      : _cast = cast;

  factory _$_CastvResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CastvResponseFromJson(json);

  @override
  final int id;
  final List<CastTvModel> _cast;
  @override
  List<CastTvModel> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'CastTvResponse(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastvResponse &&
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
  _$$_CastvResponseCopyWith<_$_CastvResponse> get copyWith =>
      __$$_CastvResponseCopyWithImpl<_$_CastvResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastvResponseToJson(
      this,
    );
  }
}

abstract class _CastvResponse implements CastTvResponse {
  const factory _CastvResponse(
      {required final int id,
      required final List<CastTvModel> cast}) = _$_CastvResponse;

  factory _CastvResponse.fromJson(Map<String, dynamic> json) =
      _$_CastvResponse.fromJson;

  @override
  int get id;
  @override
  List<CastTvModel> get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CastvResponseCopyWith<_$_CastvResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
