import 'package:equatable/equatable.dart';
import 'package:movies_app/data/models/remote/tv_model.dart';

class Tv extends Equatable {
  final String? backdropPath;
  final List<dynamic>? createdBy;
  final List<int>? episodeRunTime;
  final String? firstAirDate;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final bool? inProduction;
  final List<String>? languages;
  final String? lastAirDate;
  final String? originalName;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? status;
  final double? voteAverage;
  final int? voteCount;

  const Tv({
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.originalName,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.overview,
    this.popularity,
    this.posterPath,
    this.status,
    this.voteAverage,
    this.voteCount,
  });

  TvModel toTvModel() => TvModel(
        backdropPath: backdropPath,
        createdBy: createdBy,
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        genres: genres?.map((e) => e.toTvGenreModel()).toList(),
        homepage: homepage,
        id: id,
        inProduction: inProduction,
        languages: languages,
        lastAirDate: lastAirDate,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originalName: originalName,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        status: status,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        createdBy,
        episodeRunTime,
        firstAirDate,
        genres,
        homepage,
        id,
        inProduction,
        languages,
        lastAirDate,
        originalName,
        numberOfEpisodes,
        numberOfSeasons,
        overview,
        popularity,
        posterPath,
        status,
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

  TvGenreModel toTvGenreModel() => TvGenreModel(id: id, name: name);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
      ];
}
