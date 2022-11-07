import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/constants.dart';

class TitleAndRating extends StatelessWidget {
  final Movie movie;

  const TitleAndRating({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, style: const TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),
                  Text(movie.subtitle, style: const TextStyle(fontSize: 12,color: kTextLightColor,),),
                ],
              ),
              const SizedBox(width: 8.0,),
              Text('${movie.year}', style: const TextStyle(fontSize: 12,color: kTextLightColor,),),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/stars.png'),
              Text('From ${movie.numOfRatings} users', style: const TextStyle(fontSize: 12,color: kTextLightColor,fontWeight: FontWeight.w400),),
            ],
          ),
        ],
      ),
    );
  }
}
