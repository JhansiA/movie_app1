import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/components/rounded_button.dart';
import 'components/all_movies.dart';
import 'components/categories.dart';
import 'components/most_searched.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        // padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:  EdgeInsets.only(left: 20.0,top: 20),
                child: Text('Search for a content',style: TextStyle(fontSize: 16,),textAlign: TextAlign.start,),
              ),
              Padding(
                padding: const  EdgeInsets.only(left: 20.0),
                child: RoundedButton(title: '', onPressed: (){}),
              ),
              Categories(),
              MostSearchedMovies(),
              AvailableMovies(),
            ],
          ),
        ),
      ),
    );
  }
}
