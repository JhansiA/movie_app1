import 'package:flutter/material.dart';
import 'movie_carousel.dart';

class AvailableMovies extends StatelessWidget {
  const AvailableMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Available Movies.',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 16,),
          MovieCarousel(),
        ],
      ),
    );
  }
}
