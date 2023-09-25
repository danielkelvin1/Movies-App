import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/data/models/remote/tv_model.dart';

class Boxes {
  static Box<MovieModel> getMovies() => Hive.box<MovieModel>('movies');
  static Box<TvModel> getTv() => Hive.box<TvModel>('tv');
}
