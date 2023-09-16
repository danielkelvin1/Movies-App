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
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  List<dynamic>? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get firstAirDate => throw _privateConstructorUsedError;
  List<GenreModel>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "in_production")
  bool? get inProduction => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  @JsonKey(name: "last_air_date")
  DateTime? get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_episode_to_air")
  TEpisodeToAirModel? get lastEpisodeToAir =>
      throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "next_episode_to_air")
  TEpisodeToAirModel? get nextEpisodeToAir =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "created_by") List<dynamic>? createdBy,
      @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      List<GenreModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: "in_production") bool? inProduction,
      List<String>? languages,
      @JsonKey(name: "last_air_date") DateTime? lastAirDate,
      @JsonKey(name: "last_episode_to_air")
      TEpisodeToAirModel? lastEpisodeToAir,
      String? name,
      @JsonKey(name: "next_episode_to_air")
      TEpisodeToAirModel? nextEpisodeToAir,
      @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      String? overview,
      double? popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      String? status,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount});

  $TEpisodeToAirModelCopyWith<$Res>? get lastEpisodeToAir;
  $TEpisodeToAirModelCopyWith<$Res>? get nextEpisodeToAir;
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
    Object? lastEpisodeToAir = freezed,
    Object? name = freezed,
    Object? nextEpisodeToAir = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
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
              as List<GenreModel>?,
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
              as DateTime?,
      lastEpisodeToAir: freezed == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as TEpisodeToAirModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextEpisodeToAir: freezed == nextEpisodeToAir
          ? _value.nextEpisodeToAir
          : nextEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as TEpisodeToAirModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $TEpisodeToAirModelCopyWith<$Res>? get lastEpisodeToAir {
    if (_value.lastEpisodeToAir == null) {
      return null;
    }

    return $TEpisodeToAirModelCopyWith<$Res>(_value.lastEpisodeToAir!, (value) {
      return _then(_value.copyWith(lastEpisodeToAir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TEpisodeToAirModelCopyWith<$Res>? get nextEpisodeToAir {
    if (_value.nextEpisodeToAir == null) {
      return null;
    }

    return $TEpisodeToAirModelCopyWith<$Res>(_value.nextEpisodeToAir!, (value) {
      return _then(_value.copyWith(nextEpisodeToAir: value) as $Val);
    });
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
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "created_by") List<dynamic>? createdBy,
      @JsonKey(name: "episode_run_time") List<int>? episodeRunTime,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      List<GenreModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: "in_production") bool? inProduction,
      List<String>? languages,
      @JsonKey(name: "last_air_date") DateTime? lastAirDate,
      @JsonKey(name: "last_episode_to_air")
      TEpisodeToAirModel? lastEpisodeToAir,
      String? name,
      @JsonKey(name: "next_episode_to_air")
      TEpisodeToAirModel? nextEpisodeToAir,
      @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      String? overview,
      double? popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      String? status,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount});

  @override
  $TEpisodeToAirModelCopyWith<$Res>? get lastEpisodeToAir;
  @override
  $TEpisodeToAirModelCopyWith<$Res>? get nextEpisodeToAir;
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
    Object? lastEpisodeToAir = freezed,
    Object? name = freezed,
    Object? nextEpisodeToAir = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
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
              as List<GenreModel>?,
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
              as DateTime?,
      lastEpisodeToAir: freezed == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as TEpisodeToAirModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextEpisodeToAir: freezed == nextEpisodeToAir
          ? _value.nextEpisodeToAir
          : nextEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as TEpisodeToAirModel?,
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
      {@JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "created_by") final List<dynamic>? createdBy,
      @JsonKey(name: "episode_run_time") final List<int>? episodeRunTime,
      @JsonKey(name: "first_air_date") this.firstAirDate,
      final List<GenreModel>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: "in_production") this.inProduction,
      final List<String>? languages,
      @JsonKey(name: "last_air_date") this.lastAirDate,
      @JsonKey(name: "last_episode_to_air") this.lastEpisodeToAir,
      this.name,
      @JsonKey(name: "next_episode_to_air") this.nextEpisodeToAir,
      @JsonKey(name: "number_of_episodes") this.numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") this.numberOfSeasons,
      this.overview,
      this.popularity,
      @JsonKey(name: "poster_path") this.posterPath,
      this.status,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "vote_count") this.voteCount})
      : _createdBy = createdBy,
        _episodeRunTime = episodeRunTime,
        _genres = genres,
        _languages = languages,
        super._();

  factory _$_TvModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvModelFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  final List<dynamic>? _createdBy;
  @override
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
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "first_air_date")
  final String? firstAirDate;
  final List<GenreModel>? _genres;
  @override
  List<GenreModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: "in_production")
  final bool? inProduction;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "last_air_date")
  final DateTime? lastAirDate;
  @override
  @JsonKey(name: "last_episode_to_air")
  final TEpisodeToAirModel? lastEpisodeToAir;
  @override
  final String? name;
  @override
  @JsonKey(name: "next_episode_to_air")
  final TEpisodeToAirModel? nextEpisodeToAir;
  @override
  @JsonKey(name: "number_of_episodes")
  final int? numberOfEpisodes;
  @override
  @JsonKey(name: "number_of_seasons")
  final int? numberOfSeasons;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  final String? status;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int? voteCount;

  @override
  String toString() {
    return 'TvModel(backdropPath: $backdropPath, createdBy: $createdBy, episodeRunTime: $episodeRunTime, firstAirDate: $firstAirDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, lastEpisodeToAir: $lastEpisodeToAir, name: $name, nextEpisodeToAir: $nextEpisodeToAir, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, overview: $overview, popularity: $popularity, posterPath: $posterPath, status: $status, voteAverage: $voteAverage, voteCount: $voteCount)';
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
            (identical(other.lastEpisodeToAir, lastEpisodeToAir) ||
                other.lastEpisodeToAir == lastEpisodeToAir) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nextEpisodeToAir, nextEpisodeToAir) ||
                other.nextEpisodeToAir == nextEpisodeToAir) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
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
        lastEpisodeToAir,
        name,
        nextEpisodeToAir,
        numberOfEpisodes,
        numberOfSeasons,
        overview,
        popularity,
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
      {@JsonKey(name: "backdrop_path") final String? backdropPath,
      @JsonKey(name: "created_by") final List<dynamic>? createdBy,
      @JsonKey(name: "episode_run_time") final List<int>? episodeRunTime,
      @JsonKey(name: "first_air_date") final String? firstAirDate,
      final List<GenreModel>? genres,
      final String? homepage,
      final int? id,
      @JsonKey(name: "in_production") final bool? inProduction,
      final List<String>? languages,
      @JsonKey(name: "last_air_date") final DateTime? lastAirDate,
      @JsonKey(name: "last_episode_to_air")
      final TEpisodeToAirModel? lastEpisodeToAir,
      final String? name,
      @JsonKey(name: "next_episode_to_air")
      final TEpisodeToAirModel? nextEpisodeToAir,
      @JsonKey(name: "number_of_episodes") final int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") final int? numberOfSeasons,
      final String? overview,
      final double? popularity,
      @JsonKey(name: "poster_path") final String? posterPath,
      final String? status,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "vote_count") final int? voteCount}) = _$_TvModel;
  const _TvModel._() : super._();

  factory _TvModel.fromJson(Map<String, dynamic> json) = _$_TvModel.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "created_by")
  List<dynamic>? get createdBy;
  @override
  @JsonKey(name: "episode_run_time")
  List<int>? get episodeRunTime;
  @override
  @JsonKey(name: "first_air_date")
  String? get firstAirDate;
  @override
  List<GenreModel>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: "in_production")
  bool? get inProduction;
  @override
  List<String>? get languages;
  @override
  @JsonKey(name: "last_air_date")
  DateTime? get lastAirDate;
  @override
  @JsonKey(name: "last_episode_to_air")
  TEpisodeToAirModel? get lastEpisodeToAir;
  @override
  String? get name;
  @override
  @JsonKey(name: "next_episode_to_air")
  TEpisodeToAirModel? get nextEpisodeToAir;
  @override
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes;
  @override
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  String? get status;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_TvModelCopyWith<_$_TvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

/// @nodoc
mixin _$GenreModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreModelCopyWith<GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res, GenreModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreModelCopyWithImpl<$Res, $Val extends GenreModel>
    implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_GenreModelCopyWith<$Res>
    implements $GenreModelCopyWith<$Res> {
  factory _$$_GenreModelCopyWith(
          _$_GenreModel value, $Res Function(_$_GenreModel) then) =
      __$$_GenreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_GenreModelCopyWithImpl<$Res>
    extends _$GenreModelCopyWithImpl<$Res, _$_GenreModel>
    implements _$$_GenreModelCopyWith<$Res> {
  __$$_GenreModelCopyWithImpl(
      _$_GenreModel _value, $Res Function(_$_GenreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_GenreModel(
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
class _$_GenreModel extends _GenreModel {
  const _$_GenreModel({this.id, this.name}) : super._();

  factory _$_GenreModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenreModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreModelCopyWith<_$_GenreModel> get copyWith =>
      __$$_GenreModelCopyWithImpl<_$_GenreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreModelToJson(
      this,
    );
  }
}

abstract class _GenreModel extends GenreModel {
  const factory _GenreModel({final int? id, final String? name}) =
      _$_GenreModel;
  const _GenreModel._() : super._();

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$_GenreModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreModelCopyWith<_$_GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TEpisodeToAirModel _$TEpisodeToAirModelFromJson(Map<String, dynamic> json) {
  return _TEpisodeToAirModel.fromJson(json);
}

/// @nodoc
mixin _$TEpisodeToAirModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  int? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  DateTime? get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_number")
  int? get episodeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_type")
  String? get episodeType => throw _privateConstructorUsedError;
  @JsonKey(name: "production_code")
  String? get productionCode => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "season_number")
  int? get seasonNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "show_id")
  int? get showId => throw _privateConstructorUsedError;
  @JsonKey(name: "still_path")
  String? get stillPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TEpisodeToAirModelCopyWith<TEpisodeToAirModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TEpisodeToAirModelCopyWith<$Res> {
  factory $TEpisodeToAirModelCopyWith(
          TEpisodeToAirModel value, $Res Function(TEpisodeToAirModel) then) =
      _$TEpisodeToAirModelCopyWithImpl<$Res, TEpisodeToAirModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? overview,
      @JsonKey(name: "vote_average") int? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_number") int? episodeNumber,
      @JsonKey(name: "episode_type") String? episodeType,
      @JsonKey(name: "production_code") String? productionCode,
      int? runtime,
      @JsonKey(name: "season_number") int? seasonNumber,
      @JsonKey(name: "show_id") int? showId,
      @JsonKey(name: "still_path") String? stillPath});
}

/// @nodoc
class _$TEpisodeToAirModelCopyWithImpl<$Res, $Val extends TEpisodeToAirModel>
    implements $TEpisodeToAirModelCopyWith<$Res> {
  _$TEpisodeToAirModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? airDate = freezed,
    Object? episodeNumber = freezed,
    Object? episodeType = freezed,
    Object? productionCode = freezed,
    Object? runtime = freezed,
    Object? seasonNumber = freezed,
    Object? showId = freezed,
    Object? stillPath = freezed,
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
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeType: freezed == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCode: freezed == productionCode
          ? _value.productionCode
          : productionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      showId: freezed == showId
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as int?,
      stillPath: freezed == stillPath
          ? _value.stillPath
          : stillPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TEpisodeToAirModelCopyWith<$Res>
    implements $TEpisodeToAirModelCopyWith<$Res> {
  factory _$$_TEpisodeToAirModelCopyWith(_$_TEpisodeToAirModel value,
          $Res Function(_$_TEpisodeToAirModel) then) =
      __$$_TEpisodeToAirModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? overview,
      @JsonKey(name: "vote_average") int? voteAverage,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_number") int? episodeNumber,
      @JsonKey(name: "episode_type") String? episodeType,
      @JsonKey(name: "production_code") String? productionCode,
      int? runtime,
      @JsonKey(name: "season_number") int? seasonNumber,
      @JsonKey(name: "show_id") int? showId,
      @JsonKey(name: "still_path") String? stillPath});
}

/// @nodoc
class __$$_TEpisodeToAirModelCopyWithImpl<$Res>
    extends _$TEpisodeToAirModelCopyWithImpl<$Res, _$_TEpisodeToAirModel>
    implements _$$_TEpisodeToAirModelCopyWith<$Res> {
  __$$_TEpisodeToAirModelCopyWithImpl(
      _$_TEpisodeToAirModel _value, $Res Function(_$_TEpisodeToAirModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? airDate = freezed,
    Object? episodeNumber = freezed,
    Object? episodeType = freezed,
    Object? productionCode = freezed,
    Object? runtime = freezed,
    Object? seasonNumber = freezed,
    Object? showId = freezed,
    Object? stillPath = freezed,
  }) {
    return _then(_$_TEpisodeToAirModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeType: freezed == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCode: freezed == productionCode
          ? _value.productionCode
          : productionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      showId: freezed == showId
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as int?,
      stillPath: freezed == stillPath
          ? _value.stillPath
          : stillPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TEpisodeToAirModel extends _TEpisodeToAirModel {
  const _$_TEpisodeToAirModel(
      {this.id,
      this.name,
      this.overview,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "vote_count") this.voteCount,
      @JsonKey(name: "air_date") this.airDate,
      @JsonKey(name: "episode_number") this.episodeNumber,
      @JsonKey(name: "episode_type") this.episodeType,
      @JsonKey(name: "production_code") this.productionCode,
      this.runtime,
      @JsonKey(name: "season_number") this.seasonNumber,
      @JsonKey(name: "show_id") this.showId,
      @JsonKey(name: "still_path") this.stillPath})
      : super._();

  factory _$_TEpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      _$$_TEpisodeToAirModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? overview;
  @override
  @JsonKey(name: "vote_average")
  final int? voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int? voteCount;
  @override
  @JsonKey(name: "air_date")
  final DateTime? airDate;
  @override
  @JsonKey(name: "episode_number")
  final int? episodeNumber;
  @override
  @JsonKey(name: "episode_type")
  final String? episodeType;
  @override
  @JsonKey(name: "production_code")
  final String? productionCode;
  @override
  final int? runtime;
  @override
  @JsonKey(name: "season_number")
  final int? seasonNumber;
  @override
  @JsonKey(name: "show_id")
  final int? showId;
  @override
  @JsonKey(name: "still_path")
  final String? stillPath;

  @override
  String toString() {
    return 'TEpisodeToAirModel(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, airDate: $airDate, episodeNumber: $episodeNumber, episodeType: $episodeType, productionCode: $productionCode, runtime: $runtime, seasonNumber: $seasonNumber, showId: $showId, stillPath: $stillPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TEpisodeToAirModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episodeNumber, episodeNumber) ||
                other.episodeNumber == episodeNumber) &&
            (identical(other.episodeType, episodeType) ||
                other.episodeType == episodeType) &&
            (identical(other.productionCode, productionCode) ||
                other.productionCode == productionCode) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.showId, showId) || other.showId == showId) &&
            (identical(other.stillPath, stillPath) ||
                other.stillPath == stillPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      overview,
      voteAverage,
      voteCount,
      airDate,
      episodeNumber,
      episodeType,
      productionCode,
      runtime,
      seasonNumber,
      showId,
      stillPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TEpisodeToAirModelCopyWith<_$_TEpisodeToAirModel> get copyWith =>
      __$$_TEpisodeToAirModelCopyWithImpl<_$_TEpisodeToAirModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TEpisodeToAirModelToJson(
      this,
    );
  }
}

abstract class _TEpisodeToAirModel extends TEpisodeToAirModel {
  const factory _TEpisodeToAirModel(
          {final int? id,
          final String? name,
          final String? overview,
          @JsonKey(name: "vote_average") final int? voteAverage,
          @JsonKey(name: "vote_count") final int? voteCount,
          @JsonKey(name: "air_date") final DateTime? airDate,
          @JsonKey(name: "episode_number") final int? episodeNumber,
          @JsonKey(name: "episode_type") final String? episodeType,
          @JsonKey(name: "production_code") final String? productionCode,
          final int? runtime,
          @JsonKey(name: "season_number") final int? seasonNumber,
          @JsonKey(name: "show_id") final int? showId,
          @JsonKey(name: "still_path") final String? stillPath}) =
      _$_TEpisodeToAirModel;
  const _TEpisodeToAirModel._() : super._();

  factory _TEpisodeToAirModel.fromJson(Map<String, dynamic> json) =
      _$_TEpisodeToAirModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get overview;
  @override
  @JsonKey(name: "vote_average")
  int? get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  @JsonKey(name: "air_date")
  DateTime? get airDate;
  @override
  @JsonKey(name: "episode_number")
  int? get episodeNumber;
  @override
  @JsonKey(name: "episode_type")
  String? get episodeType;
  @override
  @JsonKey(name: "production_code")
  String? get productionCode;
  @override
  int? get runtime;
  @override
  @JsonKey(name: "season_number")
  int? get seasonNumber;
  @override
  @JsonKey(name: "show_id")
  int? get showId;
  @override
  @JsonKey(name: "still_path")
  String? get stillPath;
  @override
  @JsonKey(ignore: true)
  _$$_TEpisodeToAirModelCopyWith<_$_TEpisodeToAirModel> get copyWith =>
      throw _privateConstructorUsedError;
}
