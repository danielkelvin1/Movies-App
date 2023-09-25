// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvModel _$TvModelFromJson(Map<String, dynamic> json) {
  return _TvModel.fromJson(json);
}

/// @nodoc
mixin _$TvModel {
  @HiveField(0)
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "created_by")
  List<dynamic>? get createdBy => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "first_air_date")
  String? get firstAirDate => throw _privateConstructorUsedError;
  @HiveField(4)
  List<TvGenreModel>? get genres => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get homepage => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "in_production")
  bool? get inProduction => throw _privateConstructorUsedError;
  @HiveField(8)
  List<String>? get languages => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "last_air_date")
  String? get lastAirDate => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(13)
  double? get popularity => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(17)
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @HiveField(18)
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvModelCopyWith<TvModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvModelCopyWith<$Res> {
  factory $TvModelCopyWith(TvModel value, $Res Function(TvModel) then) =
      _$TvModelCopyWithImpl<$Res, TvModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "backdrop_path") String? backdropPath,
      @HiveField(1) @JsonKey(name: "created_by") List<dynamic>? createdBy,
      @HiveField(2)
      @JsonKey(name: "episode_run_time")
      List<int>? episodeRunTime,
      @HiveField(3) @JsonKey(name: "first_air_date") String? firstAirDate,
      @HiveField(4) List<TvGenreModel>? genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int? id,
      @HiveField(7) @JsonKey(name: "in_production") bool? inProduction,
      @HiveField(8) List<String>? languages,
      @HiveField(9) @JsonKey(name: "last_air_date") String? lastAirDate,
      @HiveField(10) @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @HiveField(11) @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @HiveField(12) String? overview,
      @HiveField(13) double? popularity,
      @HiveField(14) @JsonKey(name: 'original_name') String? originalName,
      @HiveField(15) @JsonKey(name: "poster_path") String? posterPath,
      @HiveField(16) String? status,
      @HiveField(17) @JsonKey(name: "vote_average") double? voteAverage,
      @HiveField(18) @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class _$TvModelCopyWithImpl<$Res, $Val extends TvModel>
    implements $TvModelCopyWith<$Res> {
  _$TvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? createdBy = freezed,
    Object? episodeRunTime = freezed,
    Object? firstAirDate = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? inProduction = freezed,
    Object? languages = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? originalName = freezed,
    Object? posterPath = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      episodeRunTime: freezed == episodeRunTime
          ? _value.episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<TvGenreModel>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TvModelCopyWith<$Res> implements $TvModelCopyWith<$Res> {
  factory _$$_TvModelCopyWith(
          _$_TvModel value, $Res Function(_$_TvModel) then) =
      __$$_TvModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "backdrop_path") String? backdropPath,
      @HiveField(1) @JsonKey(name: "created_by") List<dynamic>? createdBy,
      @HiveField(2)
      @JsonKey(name: "episode_run_time")
      List<int>? episodeRunTime,
      @HiveField(3) @JsonKey(name: "first_air_date") String? firstAirDate,
      @HiveField(4) List<TvGenreModel>? genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int? id,
      @HiveField(7) @JsonKey(name: "in_production") bool? inProduction,
      @HiveField(8) List<String>? languages,
      @HiveField(9) @JsonKey(name: "last_air_date") String? lastAirDate,
      @HiveField(10) @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @HiveField(11) @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @HiveField(12) String? overview,
      @HiveField(13) double? popularity,
      @HiveField(14) @JsonKey(name: 'original_name') String? originalName,
      @HiveField(15) @JsonKey(name: "poster_path") String? posterPath,
      @HiveField(16) String? status,
      @HiveField(17) @JsonKey(name: "vote_average") double? voteAverage,
      @HiveField(18) @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class __$$_TvModelCopyWithImpl<$Res>
    extends _$TvModelCopyWithImpl<$Res, _$_TvModel>
    implements _$$_TvModelCopyWith<$Res> {
  __$$_TvModelCopyWithImpl(_$_TvModel _value, $Res Function(_$_TvModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? createdBy = freezed,
    Object? episodeRunTime = freezed,
    Object? firstAirDate = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? inProduction = freezed,
    Object? languages = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? originalName = freezed,
    Object? posterPath = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_TvModel(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      episodeRunTime: freezed == episodeRunTime
          ? _value._episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<TvGenreModel>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvModel extends _TvModel {
  const _$_TvModel(
      {@HiveField(0) @JsonKey(name: "backdrop_path") this.backdropPath,
      @HiveField(1) @JsonKey(name: "created_by") final List<dynamic>? createdBy,
      @HiveField(2)
      @JsonKey(name: "episode_run_time")
      final List<int>? episodeRunTime,
      @HiveField(3) @JsonKey(name: "first_air_date") this.firstAirDate,
      @HiveField(4) final List<TvGenreModel>? genres,
      @HiveField(5) this.homepage,
      @HiveField(6) this.id,
      @HiveField(7) @JsonKey(name: "in_production") this.inProduction,
      @HiveField(8) final List<String>? languages,
      @HiveField(9) @JsonKey(name: "last_air_date") this.lastAirDate,
      @HiveField(10) @JsonKey(name: "number_of_episodes") this.numberOfEpisodes,
      @HiveField(11) @JsonKey(name: "number_of_seasons") this.numberOfSeasons,
      @HiveField(12) this.overview,
      @HiveField(13) this.popularity,
      @HiveField(14) @JsonKey(name: 'original_name') this.originalName,
      @HiveField(15) @JsonKey(name: "poster_path") this.posterPath,
      @HiveField(16) this.status,
      @HiveField(17) @JsonKey(name: "vote_average") this.voteAverage,
      @HiveField(18) @JsonKey(name: "vote_count") this.voteCount})
      : _createdBy = createdBy,
        _episodeRunTime = episodeRunTime,
        _genres = genres,
        _languages = languages,
        super._();

  factory _$_TvModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  final List<dynamic>? _createdBy;
  @override
  @HiveField(1)
  @JsonKey(name: "created_by")
  List<dynamic>? get createdBy {
    final value = _createdBy;
    if (value == null) return null;
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _episodeRunTime;
  @override
  @HiveField(2)
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  @JsonKey(name: "first_air_date")
  final String? firstAirDate;
  final List<TvGenreModel>? _genres;
  @override
  @HiveField(4)
  List<TvGenreModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final String? homepage;
  @override
  @HiveField(6)
  final int? id;
  @override
  @HiveField(7)
  @JsonKey(name: "in_production")
  final bool? inProduction;
  final List<String>? _languages;
  @override
  @HiveField(8)
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(9)
  @JsonKey(name: "last_air_date")
  final String? lastAirDate;
  @override
  @HiveField(10)
  @JsonKey(name: "number_of_episodes")
  final int? numberOfEpisodes;
  @override
  @HiveField(11)
  @JsonKey(name: "number_of_seasons")
  final int? numberOfSeasons;
  @override
  @HiveField(12)
  final String? overview;
  @override
  @HiveField(13)
  final double? popularity;
  @override
  @HiveField(14)
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  @HiveField(15)
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @HiveField(16)
  final String? status;
  @override
  @HiveField(17)
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @HiveField(18)
  @JsonKey(name: "vote_count")
  final int? voteCount;

  @override
  String toString() {
    return 'TvModel(backdropPath: $backdropPath, createdBy: $createdBy, episodeRunTime: $episodeRunTime, firstAirDate: $firstAirDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, overview: $overview, popularity: $popularity, originalName: $originalName, posterPath: $posterPath, status: $status, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvModel &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
            const DeepCollectionEquality()
                .equals(other._episodeRunTime, _episodeRunTime) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inProduction, inProduction) ||
                other.inProduction == inProduction) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        backdropPath,
        const DeepCollectionEquality().hash(_createdBy),
        const DeepCollectionEquality().hash(_episodeRunTime),
        firstAirDate,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        inProduction,
        const DeepCollectionEquality().hash(_languages),
        lastAirDate,
        numberOfEpisodes,
        numberOfSeasons,
        overview,
        popularity,
        originalName,
        posterPath,
        status,
        voteAverage,
        voteCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvModelCopyWith<_$_TvModel> get copyWith =>
      __$$_TvModelCopyWithImpl<_$_TvModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvModelToJson(
      this,
    );
  }
}

abstract class _TvModel extends TvModel {
  const factory _TvModel(
      {@HiveField(0) @JsonKey(name: "backdrop_path") final String? backdropPath,
      @HiveField(1) @JsonKey(name: "created_by") final List<dynamic>? createdBy,
      @HiveField(2)
      @JsonKey(name: "episode_run_time")
      final List<int>? episodeRunTime,
      @HiveField(3) @JsonKey(name: "first_air_date") final String? firstAirDate,
      @HiveField(4) final List<TvGenreModel>? genres,
      @HiveField(5) final String? homepage,
      @HiveField(6) final int? id,
      @HiveField(7) @JsonKey(name: "in_production") final bool? inProduction,
      @HiveField(8) final List<String>? languages,
      @HiveField(9) @JsonKey(name: "last_air_date") final String? lastAirDate,
      @HiveField(10)
      @JsonKey(name: "number_of_episodes")
      final int? numberOfEpisodes,
      @HiveField(11)
      @JsonKey(name: "number_of_seasons")
      final int? numberOfSeasons,
      @HiveField(12) final String? overview,
      @HiveField(13) final double? popularity,
      @HiveField(14) @JsonKey(name: 'original_name') final String? originalName,
      @HiveField(15) @JsonKey(name: "poster_path") final String? posterPath,
      @HiveField(16) final String? status,
      @HiveField(17) @JsonKey(name: "vote_average") final double? voteAverage,
      @HiveField(18)
      @JsonKey(name: "vote_count")
      final int? voteCount}) = _$_TvModel;
  const _TvModel._() : super._();

  factory _TvModel.fromJson(Map<String, dynamic> json) = _$_TvModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @HiveField(1)
  @JsonKey(name: "created_by")
  List<dynamic>? get createdBy;
  @override
  @HiveField(2)
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime;
  @override
  @HiveField(3)
  @JsonKey(name: "first_air_date")
  String? get firstAirDate;
  @override
  @HiveField(4)
  List<TvGenreModel>? get genres;
  @override
  @HiveField(5)
  String? get homepage;
  @override
  @HiveField(6)
  int? get id;
  @override
  @HiveField(7)
  @JsonKey(name: "in_production")
  bool? get inProduction;
  @override
  @HiveField(8)
  List<String>? get languages;
  @override
  @HiveField(9)
  @JsonKey(name: "last_air_date")
  String? get lastAirDate;
  @override
  @HiveField(10)
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes;
  @override
  @HiveField(11)
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons;
  @override
  @HiveField(12)
  String? get overview;
  @override
  @HiveField(13)
  double? get popularity;
  @override
  @HiveField(14)
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  @HiveField(15)
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @HiveField(16)
  String? get status;
  @override
  @HiveField(17)
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @HiveField(18)
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_TvModelCopyWith<_$_TvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TvGenreModel _$TvGenreModelFromJson(Map<String, dynamic> json) {
  return _TvGenreModel.fromJson(json);
}

/// @nodoc
mixin _$TvGenreModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvGenreModelCopyWith<TvGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvGenreModelCopyWith<$Res> {
  factory $TvGenreModelCopyWith(
          TvGenreModel value, $Res Function(TvGenreModel) then) =
      _$TvGenreModelCopyWithImpl<$Res, TvGenreModel>;
  @useResult
  $Res call({@HiveField(0) int? id, @HiveField(1) String? name});
}

/// @nodoc
class _$TvGenreModelCopyWithImpl<$Res, $Val extends TvGenreModel>
    implements $TvGenreModelCopyWith<$Res> {
  _$TvGenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TvGenreModelCopyWith<$Res>
    implements $TvGenreModelCopyWith<$Res> {
  factory _$$_TvGenreModelCopyWith(
          _$_TvGenreModel value, $Res Function(_$_TvGenreModel) then) =
      __$$_TvGenreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int? id, @HiveField(1) String? name});
}

/// @nodoc
class __$$_TvGenreModelCopyWithImpl<$Res>
    extends _$TvGenreModelCopyWithImpl<$Res, _$_TvGenreModel>
    implements _$$_TvGenreModelCopyWith<$Res> {
  __$$_TvGenreModelCopyWithImpl(
      _$_TvGenreModel _value, $Res Function(_$_TvGenreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TvGenreModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvGenreModel extends _TvGenreModel {
  const _$_TvGenreModel({@HiveField(0) this.id, @HiveField(1) this.name})
      : super._();

  factory _$_TvGenreModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvGenreModelFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;

  @override
  String toString() {
    return 'TvGenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvGenreModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvGenreModelCopyWith<_$_TvGenreModel> get copyWith =>
      __$$_TvGenreModelCopyWithImpl<_$_TvGenreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvGenreModelToJson(
      this,
    );
  }
}

abstract class _TvGenreModel extends TvGenreModel {
  const factory _TvGenreModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name}) = _$_TvGenreModel;
  const _TvGenreModel._() : super._();

  factory _TvGenreModel.fromJson(Map<String, dynamic> json) =
      _$_TvGenreModel.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TvGenreModelCopyWith<_$_TvGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
