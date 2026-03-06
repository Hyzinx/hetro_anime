import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/injection.dart';
import 'package:hetro_anime/presentation/screens/home_screen.dart';
import 'package:hetro_anime/presentation/themes/main_theme.dart';

void main() {
  initializeDependency();
  runApp(HetroAnime());
}

class HetroAnime extends StatelessWidget {
  const HetroAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => MovieCubit(getIt()),
        child: HomeScreen(),
      ),
    );
  }
}
