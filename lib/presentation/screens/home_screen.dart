import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/data/models/movie.dart';
import 'package:hetro_anime/data/repositories/movie_repository.dart';
import 'package:hetro_anime/injection.dart';
import 'package:hetro_anime/presentation/model/category.dart';
import 'package:hetro_anime/presentation/widgets/shared/bottom_navigation_bar/bottom_menue_movie.dart';
import 'package:hetro_anime/presentation/widgets/shared/list_category/list_category.dart';
import 'package:hetro_anime/presentation/widgets/shared/list_movies/movie_list_view.dart';
import 'package:hetro_anime/presentation/widgets/shared/search_widget.dart';
import 'package:hetro_anime/presentation/widgets/shared/top_anime_screen/top_anime.dart';
import 'package:hetro_anime/presentation/widgets/text_theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void changeMovie(int index) {
    switch (index) {
      case 0:
        context.read<MovieCubit>().getAllMoviesPlayNow();
        break;
      case 1:
        context.read<MovieCubit>().getAllMoviesUpcoming();
        break;
      case 2:
        context.read<MovieCubit>().getAllMoviesTopRated();
        break;
      case 3:
        context.read<MovieCubit>().getAllMoviesPopular();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenueMovie(),
      appBar: AppBar(title: BodyLargTheme(text: "What do you want to watch?")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchWidget(),
              TopAnime(),
              ListCategory(onChangeCatigory: changeMovie),
              MovieListView(),
            ],
          ),
        ),
      ),
    );
  }
}
