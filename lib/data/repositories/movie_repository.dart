import 'package:hetro_anime/consts/strings.dart';
import 'package:hetro_anime/data/api/movie_api.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/data/models/response_result.dart';

class MovieRepository {
  final MovieApi movieApi;
  MovieRepository(this.movieApi);
  Future<List<Movie>> getAllMoviesPlayNow() async {
    final ResponseResult response = await movieApi.getMoviesPlayNow(
      "Bearer $apiKey",
    );
    return response.results!.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getAllMoviesUpcoming() async {
    final ResponseResult response = await movieApi.getMoviesUpcoming(
      "Bearer $apiKey",
    );
    return response.results!.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getAllMoviesTopRated() async {
    final ResponseResult response = await movieApi.getMoviesTopRated(
      "Bearer $apiKey",
    );
    return response.results!.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<List<Movie>> getAllMoviesPopular() async {
    final ResponseResult response = await movieApi.getMoviesPopular(
      "Bearer $apiKey",
    );
    return response.results!.map((movie) => Movie.fromJson(movie)).toList();
  }
}
