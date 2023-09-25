// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @HiveField(0)
  bool? get adult => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "belongs_to_collection")
  dynamic get belongsToCollection => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get budget => throw _privateConstructorUsedError;
  @HiveField(4)
  List<GenreModel>? get genres => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get homepage => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get imdbId => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(11)
  double? get popularity => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @HiveField(14)
  int? get revenue => throw _privateConstructorUsedError;
  @HiveField(15)
  int? get runtime => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(17)
  String? get tagline => throw _privateConstructorUsedError;
  @HiveField(18)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(19)
  bool? get video => throw _privateConstructorUsedError;
  @HiveField(20)
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @HiveField(21)
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {@HiveField(0) bool? adult,
      @HiveField(1) @JsonKey(name: "backdrop_path") String? backdropPath,
      @HiveField(2)
      @JsonKey(name: "belongs_to_collection")
      dynamic belongsToCollection,
      @HiveField(3) int? budget,
      @HiveField(4) List<GenreModel>? genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int? id,
      @HiveField(7) String? imdbId,
      @HiveField(8)
      @JsonKey(name: "original_language")
      String? originalLanguage,
      @HiveField(9) @JsonKey(name: "original_title") String? originalTitle,
      @HiveField(10) String? overview,
      @HiveField(11) double? popularity,
      @HiveField(12) @JsonKey(name: "poster_path") String? posterPath,
      @HiveField(13) @JsonKey(name: "release_date") String? releaseDate,
      @HiveField(14) int? revenue,
      @HiveField(15) int? runtime,
      @HiveField(16) String? status,
      @HiveField(17) String? tagline,
      @HiveField(18) String? title,
      @HiveField(19) bool? video,
      @HiveField(20) @JsonKey(name: "vote_average") double? voteAverage,
      @HiveField(21) @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool? adult,
      @HiveField(1) @JsonKey(name: "backdrop_path") String? backdropPath,
      @HiveField(2)
      @JsonKey(name: "belongs_to_collection")
      dynamic belongsToCollection,
      @HiveField(3) int? budget,
      @HiveField(4) List<GenreModel>? genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int? id,
      @HiveField(7) String? imdbId,
      @HiveField(8)
      @JsonKey(name: "original_language")
      String? originalLanguage,
      @HiveField(9) @JsonKey(name: "original_title") String? originalTitle,
      @HiveField(10) String? overview,
      @HiveField(11) double? popularity,
      @HiveField(12) @JsonKey(name: "poster_path") String? posterPath,
      @HiveField(13) @JsonKey(name: "release_date") String? releaseDate,
      @HiveField(14) int? revenue,
      @HiveField(15) int? runtime,
      @HiveField(16) String? status,
      @HiveField(17) String? tagline,
      @HiveField(18) String? title,
      @HiveField(19) bool? video,
      @HiveField(20) @JsonKey(name: "vote_average") double? voteAverage,
      @HiveField(21) @JsonKey(name: "vote_count") int? voteCount});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$_MovieModel>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_MovieModel(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_MovieModel extends _MovieModel {
  const _$_MovieModel(
      {@HiveField(0) this.adult,
      @HiveField(1) @JsonKey(name: "backdrop_path") this.backdropPath,
      @HiveField(2)
      @JsonKey(name: "belongs_to_collection")
      this.belongsToCollection,
      @HiveField(3) this.budget,
      @HiveField(4) final List<GenreModel>? genres,
      @HiveField(5) this.homepage,
      @HiveField(6) this.id,
      @HiveField(7) this.imdbId,
      @HiveField(8) @JsonKey(name: "original_language") this.originalLanguage,
      @HiveField(9) @JsonKey(name: "original_title") this.originalTitle,
      @HiveField(10) this.overview,
      @HiveField(11) this.popularity,
      @HiveField(12) @JsonKey(name: "poster_path") this.posterPath,
      @HiveField(13) @JsonKey(name: "release_date") this.releaseDate,
      @HiveField(14) this.revenue,
      @HiveField(15) this.runtime,
      @HiveField(16) this.status,
      @HiveField(17) this.tagline,
      @HiveField(18) this.title,
      @HiveField(19) this.video,
      @HiveField(20) @JsonKey(name: "vote_average") this.voteAverage,
      @HiveField(21) @JsonKey(name: "vote_count") this.voteCount})
      : _genres = genres,
        super._();

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  @HiveField(0)
  final bool? adult;
  @override
  @HiveField(1)
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @HiveField(2)
  @JsonKey(name: "belongs_to_collection")
  final dynamic belongsToCollection;
  @override
  @HiveField(3)
  final int? budget;
  final List<GenreModel>? _genres;
  @override
  @HiveField(4)
  List<GenreModel>? get genres {
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
  final String? imdbId;
  @override
  @HiveField(8)
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @HiveField(9)
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @HiveField(10)
  final String? overview;
  @override
  @HiveField(11)
  final double? popularity;
  @override
  @HiveField(12)
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @HiveField(13)
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @HiveField(14)
  final int? revenue;
  @override
  @HiveField(15)
  final int? runtime;
  @override
  @HiveField(16)
  final String? status;
  @override
  @HiveField(17)
  final String? tagline;
  @override
  @HiveField(18)
  final String? title;
  @override
  @HiveField(19)
  final bool? video;
  @override
  @HiveField(20)
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @HiveField(21)
  @JsonKey(name: "vote_count")
  final int? voteCount;

  @override
  String toString() {
    return 'MovieModel(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.belongsToCollection, belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        const DeepCollectionEquality().hash(belongsToCollection),
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        revenue,
        runtime,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel extends MovieModel {
  const factory _MovieModel(
      {@HiveField(0) final bool? adult,
      @HiveField(1) @JsonKey(name: "backdrop_path") final String? backdropPath,
      @HiveField(2)
      @JsonKey(name: "belongs_to_collection")
      final dynamic belongsToCollection,
      @HiveField(3) final int? budget,
      @HiveField(4) final List<GenreModel>? genres,
      @HiveField(5) final String? homepage,
      @HiveField(6) final int? id,
      @HiveField(7) final String? imdbId,
      @HiveField(8)
      @JsonKey(name: "original_language")
      final String? originalLanguage,
      @HiveField(9)
      @JsonKey(name: "original_title")
      final String? originalTitle,
      @HiveField(10) final String? overview,
      @HiveField(11) final double? popularity,
      @HiveField(12) @JsonKey(name: "poster_path") final String? posterPath,
      @HiveField(13) @JsonKey(name: "release_date") final String? releaseDate,
      @HiveField(14) final int? revenue,
      @HiveField(15) final int? runtime,
      @HiveField(16) final String? status,
      @HiveField(17) final String? tagline,
      @HiveField(18) final String? title,
      @HiveField(19) final bool? video,
      @HiveField(20) @JsonKey(name: "vote_average") final double? voteAverage,
      @HiveField(21)
      @JsonKey(name: "vote_count")
      final int? voteCount}) = _$_MovieModel;
  const _MovieModel._() : super._();

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @HiveField(0)
  bool? get adult;
  @override
  @HiveField(1)
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @HiveField(2)
  @JsonKey(name: "belongs_to_collection")
  dynamic get belongsToCollection;
  @override
  @HiveField(3)
  int? get budget;
  @override
  @HiveField(4)
  List<GenreModel>? get genres;
  @override
  @HiveField(5)
  String? get homepage;
  @override
  @HiveField(6)
  int? get id;
  @override
  @HiveField(7)
  String? get imdbId;
  @override
  @HiveField(8)
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @HiveField(9)
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @HiveField(10)
  String? get overview;
  @override
  @HiveField(11)
  double? get popularity;
  @override
  @HiveField(12)
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @HiveField(13)
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @HiveField(14)
  int? get revenue;
  @override
  @HiveField(15)
  int? get runtime;
  @override
  @HiveField(16)
  String? get status;
  @override
  @HiveField(17)
  String? get tagline;
  @override
  @HiveField(18)
  String? get title;
  @override
  @HiveField(19)
  bool? get video;
  @override
  @HiveField(20)
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @HiveField(21)
  @JsonKey(name: "vote_count")
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

/// @nodoc
mixin _$GenreModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call({@HiveField(0) int? id, @HiveField(1) String? name});
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
  $Res call({@HiveField(0) int? id, @HiveField(1) String? name});
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
  const _$_GenreModel({@HiveField(0) this.id, @HiveField(1) this.name})
      : super._();

  factory _$_GenreModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenreModelFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
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
  const factory _GenreModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name}) = _$_GenreModel;
  const _GenreModel._() : super._();

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$_GenreModel.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreModelCopyWith<_$_GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
