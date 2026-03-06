import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/consts/my_colors.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/presentation/widgets/shared/top_anime_screen/top_anime_card.dart';

class TopAnime extends StatefulWidget {
  const TopAnime({super.key});

  @override
  State<TopAnime> createState() => _TopAnimeState();
}

class _TopAnimeState extends State<TopAnime> {

  List<Movie>moviePlayNow=[];

  @override
  void initState() {
    super.initState();
    context.read<MovieCubit>().getAllMoviesPlayNow();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        if (state is LoadPlayNowMovies) {
          moviePlayNow=state.playNowMovies;
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: moviePlayNow.length,
              itemBuilder: (context, index) => TopAnimeCard(
                image:  moviePlayNow[index].posterPath,
                order: index + 1,
                key: ValueKey(index),
              ),
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CircularProgressIndicator(color: MyColors.ratingColors),
          );
        }
      },
    );
  }
}
