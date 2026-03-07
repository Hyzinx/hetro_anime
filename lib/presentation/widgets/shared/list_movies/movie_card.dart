import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: image == null
            ? Image.asset("assets/images/Loading.gif")
            : FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                image: "https://image.tmdb.org/t/p/w500$image",
                placeholder: "assets/images/Loading.gif",
              ),
      ),
    );
  }
}
