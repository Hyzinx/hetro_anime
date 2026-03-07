import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_state.dart';
import 'package:hetro_anime/data/exception_handeler/api_result.dart';
import 'package:hetro_anime/data/exception_handeler/network_exception.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/data/repositories/movie_repository.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this.movieRepository)
    : super(LoadingMoviesList(currentList: [], topRatedMovies: []));
  MovieRepository movieRepository;

  void loadAllMoviesTopRated() async {
    final data = await movieRepository.getAllMoviesTopRated();

    data.when(
      success: (List<Movie> moviesTopRated) {
        emit(
          (state as LoadingMoviesList).copyWith(topRatedMovies: moviesTopRated),
        );
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(MovieState.error(networkExceptions));
      },
    );
  }

  void getAllMoviesTopRated() async {
    final data = await movieRepository.getAllMoviesTopRated();

    data.when(
      success: (List<Movie> moviesTopRated) {
        emit(
          (state as LoadingMoviesList).copyWith(currentList: moviesTopRated),
        );
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(MovieState.error(networkExceptions));
      },
    );
  }

  void getAllMoviesPlayNow() async {
    final data = await movieRepository.getAllMoviesPlayNow();

    data.when(
      success: (List<Movie> moviesPlayNow) {
        emit((state as LoadingMoviesList).copyWith(currentList: moviesPlayNow));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(MovieState.error(networkExceptions));
      },
    );
  }

  void getAllMoviesUpcoming() async {
    final data = await movieRepository.getAllMoviesUpcoming();

    data.when(
      success: (List<Movie> moviesupcoming) {
        emit(
          (state as LoadingMoviesList).copyWith(currentList: moviesupcoming),
        );
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(MovieState.error(networkExceptions));
      },
    );
  }

  void getAllMoviesPopular() async {
    final data = await movieRepository.getAllMoviesPopular();

    data.when(
      success: (List<Movie> moviesPopular) {
        emit((state as LoadingMoviesList).copyWith(currentList: moviesPopular));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(MovieState.error(networkExceptions));
      },
    );
  }
}
