// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_tv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastTvModel _$CastTvModelFromJson(Map<String, dynamic> json) {
  return _CastTvModel.fromJson(json);
}

/// @nodoc
mixin _$CastTvModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastTvModelCopyWith<CastTvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastTvModelCopyWith<$Res> {
  factory $CastTvModelCopyWith(
          CastTvModel value, $Res Function(CastTvModel) then) =
      _$CastTvModelCopyWithImpl<$Res, CastTvModel>;
  @useResult
  $Res call({String? name, @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class _$CastTvModelCopyWithImpl<$Res, $Val extends CastTvModel>
    implements $CastTvModelCopyWith<$Res> {
  _$CastTvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastTvModelCopyWith<$Res>
    implements $CastTvModelCopyWith<$Res> {
  factory _$$_CastTvModelCopyWith(
          _$_CastTvModel value, $Res Function(_$_CastTvModel) then) =
      __$$_CastTvModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class __$$_CastTvModelCopyWithImpl<$Res>
    extends _$CastTvModelCopyWithImpl<$Res, _$_CastTvModel>
    implements _$$_CastTvModelCopyWith<$Res> {
  __$$_CastTvModelCopyWithImpl(
      _$_CastTvModel _value, $Res Function(_$_CastTvModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_CastTvModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastTvModel extends _CastTvModel {
  const _$_CastTvModel(
      {this.name, @JsonKey(name: 'profile_path') this.profilePath})
      : super._();

  factory _$_CastTvModel.fromJson(Map<String, dynamic> json) =>
      _$$_CastTvModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'CastTvModel(name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastTvModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastTvModelCopyWith<_$_CastTvModel> get copyWith =>
      __$$_CastTvModelCopyWithImpl<_$_CastTvModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastTvModelToJson(
      this,
    );
  }
}

abstract class _CastTvModel extends CastTvModel {
  const factory _CastTvModel(
          {final String? name,
          @JsonKey(name: 'profile_path') final String? profilePath}) =
      _$_CastTvModel;
  const _CastTvModel._() : super._();

  factory _CastTvModel.fromJson(Map<String, dynamic> json) =
      _$_CastTvModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CastTvModelCopyWith<_$_CastTvModel> get copyWith =>
      throw _privateConstructorUsedError;
}
