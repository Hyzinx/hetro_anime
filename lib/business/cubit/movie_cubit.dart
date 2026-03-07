import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/data/repositories/movie_repository.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this.movieRepository)
    : super(LoadingMoviesList(topRatedMovies: [], currentList: []));
  MovieRepository movieRepository;

  void loadPlayMoviesTopRated() async {
    final List<Movie> topRatedList = await movieRepository
        .getAllMoviesTopRated();
    emit((state as LoadingMoviesList).copyWith(topRatedMovies: topRatedList));
  }

  void getAllMoviesTopRated() async {
    final List<Movie> topRatedList = await movieRepository
        .getAllMoviesTopRated();
    emit((state as LoadingMoviesList).copyWith(currentList: topRatedList));
  }

  void getAllMoviesPlayNow() async {
    final List<Movie> playNowList = await movieRepository.getAllMoviesPlayNow();
    emit((state as LoadingMoviesList).copyWith(currentList: playNowList));
  }

  void getAllMoviesUpcoming() async {
    final List<Movie> upcomingList = await movieRepository
        .getAllMoviesUpcoming();
    emit((state as LoadingMoviesList).copyWith(currentList: upcomingList));
  }

  void getAllMoviesPopular() async {
    final List<Movie> popularList = await movieRepository.getAllMoviesPopular();
    emit((state as LoadingMoviesList).copyWith(currentList: popularList));
  }
}
