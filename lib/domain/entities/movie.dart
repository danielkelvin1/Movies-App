import 'package:equatable/equatable.dart';
import 'package:movies_app/data/models/remote/movie_model.dart';

class Movie extends Equatable {
  final bool? adult;
  final String? backdropPath;
  final dynamic belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  const Movie({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  MovieModel toMovieModel() => MovieModel(
        adult: adult,
        backdropPath: backdropPath,
        belongsToCollection: belongsToCollection,
        budget: budget,
        genres: genres?.map((e) => e.toGenreModel()).toList(),
        homepage: homepage,
        id: id,
        imdbId: imdbId,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        revenue: revenue,
        runtime: runtime,
        status: status,
        tagline: tagline,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        genres,
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
        voteCount,
      ];
}

class Genre extends Equatable {
  final int? id;
  final String? name;

  const Genre({
    this.id,
    this.name,
  });

  GenreModel toGenreModel() => GenreModel(
        id: id,
        name: name,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [id, name];
}
