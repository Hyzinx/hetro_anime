import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hetro_anime/data/exception_handeler/network_exception.dart';
import 'package:hetro_anime/data/models/movie.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState<T> with _$MovieState<T> {
  const factory MovieState.initial() = MovieInitial;
  const factory MovieState.loadedTopRated({
    required List<Movie> topRatedMovies,
    required List<Movie> currentList,
  }) = LoadingMoviesList;
  const factory MovieState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}

// @immutable
// sealed class MovieState {}

// final class MovieInitial extends MovieState {}

// final class LoadingMoviesList extends MovieState {
//   final List<Movie> topRatedMovies;
//   final List<Movie> currentList;

//   LoadingMoviesList({required this.topRatedMovies, required this.currentList});

//   LoadingMoviesList copyWith({
//     List<Movie>? currentList,
//     List<Movie>? topRatedMovies,
//   }) {
//     return LoadingMoviesList(
//       topRatedMovies: topRatedMovies ?? this.topRatedMovies,
//       currentList: currentList ?? this.currentList,
//     );
//   }
// }
