import 'package:equatable/equatable.dart';

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
  final DateTime? lastAirDate;
  final TEpisodeToAir? lastEpisodeToAir;
  final String? name;
  final TEpisodeToAir? nextEpisodeToAir;
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
    this.lastEpisodeToAir,
    this.name,
    this.nextEpisodeToAir,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.overview,
    this.popularity,
    this.posterPath,
    this.status,
    this.voteAverage,
    this.voteCount,
  });

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

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
      ];
}

class TEpisodeToAir extends Equatable {
  final int? id;
  final String? name;
  final String? overview;
  final int? voteAverage;
  final int? voteCount;
  final DateTime? airDate;
  final int? episodeNumber;
  final String? episodeType;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;

  const TEpisodeToAir({
    this.id,
    this.name,
    this.overview,
    this.voteAverage,
    this.voteCount,
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
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
        stillPath,
      ];
}
