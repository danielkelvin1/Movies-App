import 'package:dio/dio.dart';
import 'package:movies_app/data/models/remote/movie_model.dart';
import 'package:movies_app/data/models/remote/movie_response.dart';
import 'package:movies_app/utils/constants.dart';
import 'package:movies_app/utils/exception.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  //Movies Api Servvice
  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await dio.get(
      '$baseUrl/trending/movie/day',
      options: Options(
        headers: {
          'Authorization': 'Bearer $apiKey',
          'accept': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200) {
      return MovieResponse.fromJson(response.data).results;
    } else {
      throw ServerException();
    }
  }
}
