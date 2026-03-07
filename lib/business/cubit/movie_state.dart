part of 'movie_cubit.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class LoadingMoviesList extends MovieState {
  final List<Movie> topRatedMovies;
  final List<Movie> currentList;

  LoadingMoviesList({required this.topRatedMovies, required this.currentList});

  LoadingMoviesList copyWith({
    List<Movie>? currentList,
    List<Movie>? topRatedMovies,
  }) {
    return LoadingMoviesList(
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      currentList: currentList ?? this.currentList,
    );
  }
}
