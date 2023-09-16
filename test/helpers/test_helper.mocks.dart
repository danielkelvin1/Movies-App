// Mocks generated by Mockito 5.4.2 from annotations
// in movies_app/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:movies_app/data/datasources/remote/movie_remote_data_source.dart'
    as _i9;
import 'package:movies_app/data/datasources/remote/tv_remote_date_source.dart'
    as _i11;
import 'package:movies_app/data/models/remote/movie_model.dart' as _i10;
import 'package:movies_app/data/models/remote/tv_model.dart' as _i12;
import 'package:movies_app/domain/entities/movie.dart' as _i6;
import 'package:movies_app/domain/entities/tv.dart' as _i8;
import 'package:movies_app/domain/repositories/movie_repository.dart' as _i3;
import 'package:movies_app/domain/repositories/tv_repository.dart' as _i7;
import 'package:movies_app/utils/failure.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i3.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getTrending() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTrending,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getTrending,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getNowPlaying() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlaying,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getNowPlaying,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getPopular() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopular,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getPopular,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getTopRated() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRated,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getTopRated,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getUpcoming() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcoming,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getUpcoming,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>> getSearch(
    int? page,
    String? search,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearch,
          [
            page,
            search,
          ],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>.value(
            _FakeEither_0<_i5.Failure, List<_i6.Movie>>(
          this,
          Invocation.method(
            #getSearch,
            [
              page,
              search,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.Movie>>>);
}

/// A class which mocks [TvRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRepository extends _i1.Mock implements _i7.TvRepository {
  MockTvRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getTrending() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTrending,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getTrending,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getAiringToday() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAiringToday,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getAiringToday,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getOnTheAir() =>
      (super.noSuchMethod(
        Invocation.method(
          #getOnTheAir,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getOnTheAir,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getPopular() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopular,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getPopular,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getTopRated() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRated,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getTopRated,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>> getSearch(
    int? page,
    String? search,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearch,
          [
            page,
            search,
          ],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>.value(
            _FakeEither_0<_i5.Failure, List<_i8.Tv>>(
          this,
          Invocation.method(
            #getSearch,
            [
              page,
              search,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i8.Tv>>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i9.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i10.MovieModel>> getTrending() => (super.noSuchMethod(
        Invocation.method(
          #getTrending,
          [],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
  @override
  _i4.Future<List<_i10.MovieModel>> getNowPlaying() => (super.noSuchMethod(
        Invocation.method(
          #getNowPlaying,
          [],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
  @override
  _i4.Future<List<_i10.MovieModel>> getPopular() => (super.noSuchMethod(
        Invocation.method(
          #getPopular,
          [],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
  @override
  _i4.Future<List<_i10.MovieModel>> getTopRated() => (super.noSuchMethod(
        Invocation.method(
          #getTopRated,
          [],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
  @override
  _i4.Future<List<_i10.MovieModel>> getUpcoming() => (super.noSuchMethod(
        Invocation.method(
          #getUpcoming,
          [],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
  @override
  _i4.Future<List<_i10.MovieModel>> getSearch(
    int? page,
    String? search,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearch,
          [
            page,
            search,
          ],
        ),
        returnValue:
            _i4.Future<List<_i10.MovieModel>>.value(<_i10.MovieModel>[]),
      ) as _i4.Future<List<_i10.MovieModel>>);
}

/// A class which mocks [TvRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRemoteDataSource extends _i1.Mock
    implements _i11.TvRemoteDataSource {
  MockTvRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i12.TvModel>> getTrending() => (super.noSuchMethod(
        Invocation.method(
          #getTrending,
          [],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
  @override
  _i4.Future<List<_i12.TvModel>> getAiringToday() => (super.noSuchMethod(
        Invocation.method(
          #getAiringToday,
          [],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
  @override
  _i4.Future<List<_i12.TvModel>> getOnTheAir() => (super.noSuchMethod(
        Invocation.method(
          #getOnTheAir,
          [],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
  @override
  _i4.Future<List<_i12.TvModel>> getPopular() => (super.noSuchMethod(
        Invocation.method(
          #getPopular,
          [],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
  @override
  _i4.Future<List<_i12.TvModel>> getTopRated() => (super.noSuchMethod(
        Invocation.method(
          #getTopRated,
          [],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
  @override
  _i4.Future<List<_i12.TvModel>> getSearch(
    int? page,
    String? search,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearch,
          [
            page,
            search,
          ],
        ),
        returnValue: _i4.Future<List<_i12.TvModel>>.value(<_i12.TvModel>[]),
      ) as _i4.Future<List<_i12.TvModel>>);
}