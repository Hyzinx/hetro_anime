import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/presentation/widgets/shared/list_movies/movie_card.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({super.key, this.selectedCategory = 0});
  final int selectedCategory;

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  List<Movie> listMovies = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        if (state is LoadingMoviesList) {
          listMovies = state.currentList;
        }
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.6
          ),
          itemCount: listMovies.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return MovieCard(image: listMovies[index].posterPath);
          },
        );
      },
    );
  }
}
