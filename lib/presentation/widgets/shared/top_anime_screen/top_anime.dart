import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/business/cubit/movie_state.dart';
import 'package:hetro_anime/consts/my_colors.dart';
import 'package:hetro_anime/data/exception_handeler/network_exception.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/presentation/widgets/shared/top_anime_screen/top_anime_card.dart';

class TopAnime extends StatefulWidget {
  const TopAnime({super.key});

  @override
  State<TopAnime> createState() => _TopAnimeState();
}

class _TopAnimeState extends State<TopAnime> {
  List<Movie> moviesTopRated = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<MovieCubit>(context).loadAllMoviesTopRated();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState<dynamic>>(
      builder: (context, MovieState<dynamic> state) {
        return state.when(
          initial: () {
            return Container(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(color: MyColors.ratingColors),
            );
          },
          loadedTopRated: (moviesTopRated, currentMovies) {
            return SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: moviesTopRated.length,
                itemBuilder: (context, index) => TopAnimeCard(
                  image: moviesTopRated[index].posterPath,
                  order: index + 1,
                  key: ValueKey(index),
                ),
              ),
            );
          },
          error: (error) {
            return Text(NetworkExceptions.getErrorMessage(error));
          },
        );
      },
    );
  }
}
/**
        if (state is LoadingMoviesList) {
          moviesTopRated = state.topRatedMovies;
          return SizedBox(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: moviesTopRated.length,
              itemBuilder: (context, index) => TopAnimeCard(
                image: moviesTopRated[index].posterPath,
                order: index + 1,
                key: ValueKey(index),
              ),
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(color: MyColors.ratingColors),
          );
        } 

 */