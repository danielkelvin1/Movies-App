// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastMovieModel _$CastMovieModelFromJson(Map<String, dynamic> json) {
  return _CastMovieModel.fromJson(json);
}

/// @nodoc
mixin _$CastMovieModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastMovieModelCopyWith<CastMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastMovieModelCopyWith<$Res> {
  factory $CastMovieModelCopyWith(
          CastMovieModel value, $Res Function(CastMovieModel) then) =
      _$CastMovieModelCopyWithImpl<$Res, CastMovieModel>;
  @useResult
  $Res call({String? name, @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class _$CastMovieModelCopyWithImpl<$Res, $Val extends CastMovieModel>
    implements $CastMovieModelCopyWith<$Res> {
  _$CastMovieModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CastMovieModelCopyWith<$Res>
    implements $CastMovieModelCopyWith<$Res> {
  factory _$$_CastMovieModelCopyWith(
          _$_CastMovieModel value, $Res Function(_$_CastMovieModel) then) =
      __$$_CastMovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class __$$_CastMovieModelCopyWithImpl<$Res>
    extends _$CastMovieModelCopyWithImpl<$Res, _$_CastMovieModel>
    implements _$$_CastMovieModelCopyWith<$Res> {
  __$$_CastMovieModelCopyWithImpl(
      _$_CastMovieModel _value, $Res Function(_$_CastMovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_CastMovieModel(
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
class _$_CastMovieModel extends _CastMovieModel {
  const _$_CastMovieModel(
      {this.name, @JsonKey(name: "profile_path") this.profilePath})
      : super._();

  factory _$_CastMovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_CastMovieModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;

  @override
  String toString() {
    return 'CastMovieModel(name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastMovieModel &&
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
  _$$_CastMovieModelCopyWith<_$_CastMovieModel> get copyWith =>
      __$$_CastMovieModelCopyWithImpl<_$_CastMovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastMovieModelToJson(
      this,
    );
  }
}

abstract class _CastMovieModel extends CastMovieModel {
  const factory _CastMovieModel(
          {final String? name,
          @JsonKey(name: "profile_path") final String? profilePath}) =
      _$_CastMovieModel;
  const _CastMovieModel._() : super._();

  factory _CastMovieModel.fromJson(Map<String, dynamic> json) =
      _$_CastMovieModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CastMovieModelCopyWith<_$_CastMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
