import 'package:flutter/material.dart';
import 'package:hetro_anime/consts/my_colors.dart';

class BottomMenueMovie extends StatefulWidget {
  const BottomMenueMovie({super.key});

  @override
  State<BottomMenueMovie> createState() => _BottomMenueMovieState();
}

class _BottomMenueMovieState extends State<BottomMenueMovie> {
  int selectecIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: BoxBorder.fromSTEB(
          top: BorderSide(color: MyColors.mainBorderColore, width: 2),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          backgroundColor: MyColors.mainColore,
          currentIndex: selectecIndex,
          onTap: _onItemTapped,
          iconSize: 30,
          unselectedItemColor: MyColors.secondaryBorderColore,
          elevation: 0,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: MyColors.mainBorderColore,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: MyColors.mainBorderColore,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline_sharp),
              label: 'Watch list',
              backgroundColor: MyColors.mainBorderColore,
            ),
          ],
        ),
      ),
    );
  }
}
