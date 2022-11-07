import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/details/components/title_and_rating.dart';
import 'package:movie_app/components/rounded_button.dart';

import 'cast_and_crew.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movie.poster),
              ),
            ),
          ),
          TitleAndRating(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Text(movie.plot,style: const TextStyle(fontSize: 14,color: kTextLightColor,fontWeight: FontWeight.w400),),
          ),
          CastAndCrew(casts: movie.cast),
          const SizedBox(height: 20,),
          RoundedButton(title: 'Watch now', onPressed: (){})
        ],
      ),
    );
  }
}

