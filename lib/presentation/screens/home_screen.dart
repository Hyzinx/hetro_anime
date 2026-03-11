import 'package:flutter/material.dart';
import 'package:hetro_anime/presentation/screens/main_screen.dart';
import 'package:hetro_anime/presentation/screens/search_screen.dart';
import 'package:hetro_anime/presentation/screens/watch_list_screen.dart';
import 'package:hetro_anime/presentation/widgets/shared/bottom_navigation_bar/bottom_menue_movie.dart';

import 'package:hetro_anime/presentation/widgets/text_theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int selectedButtonIndex = 0;
  final List<Widget> screens = [
    MainScreen(),
    SearchScreen(),
    WatchListScreen(),
  ];

  void onSelectedButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenueMovie(
        selectedIndex: selectedButtonIndex,
        onSelectedButton: onSelectedButton,
      ),
      appBar: AppBar(title: BodyLargTheme(text: "Hetro Movie")),
      body: screens[selectedButtonIndex],
    );
  }
}
