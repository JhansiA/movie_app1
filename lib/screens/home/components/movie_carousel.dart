import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import '../../../constants.dart';
import '../../details/details_screen.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          Movie movie = movies[index];
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute (
                  builder: (BuildContext context) => DetailsScreen(movie: movie,)));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                        image: AssetImage(
                          movie.backdrop,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${movie.year}',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12,color: kTextLightColor),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
