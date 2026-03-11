import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hetro_anime/consts/my_colors.dart';
import 'package:hetro_anime/consts/strings.dart';
import 'package:hetro_anime/data/models/genre.dart';
import 'package:hetro_anime/data/models/movie.dart';

class SearchMovieCard extends StatelessWidget {
  const SearchMovieCard({
    super.key,
    required this.movie,
    required this.listGenre,
  });
  final Movie movie;
  final List<Genre> listGenre;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 170,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: (movie.posterPath == null)
                  ? Image.asset("assets/images/Loading.gif")
                  : FadeInImage.assetNetwork(
                      height: 170,
                      fit: BoxFit.cover,
                      placeholder: 'assets/images/Loading.gif',
                      image: "$baseImageUrl${movie.posterPath}",
                    ),
            ),
          ),
          Container(
            width: 230,
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "${movie.title}",
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                Spacer(flex: 2,),
                
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.star,
                        color: MyColors.ratingColors,
                        size: 19,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "${movie.voteAverage}",
                        style: GoogleFonts.poppins(color: MyColors.ratingColors,fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.ticket, color: Colors.white,size: 20,),
                      SizedBox(width: 5),
                      Text(
                        "${Genre.selectGenre(movie.genreIds!, listGenre).name}",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined, color: Colors.white,size: 20,),
                      SizedBox(width: 5),
                      Text(
                        movie.releaseDate!.split("-")[0],
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                
                Spacer(flex: 1,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.language, color: Colors.white,size: 20,),
                      SizedBox(width: 5),
                      Text(
                        "${movie.originalLanguage}",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
