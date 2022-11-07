import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/home_screen.dart';
import '../components/rounded_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Transform(
                transform: Matrix4.skewY(-0.2),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/movie 1.png"),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: kDefaultPadding,),
              Transform(
                transform: Matrix4.skewY(-0.2),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Stranger-things-4 1.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding,),
              Transform(
                transform: Matrix4.skewY(-0.2),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Animeee 1.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding,),
              const Text('Onboarding',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: kTextColor),),
              const SizedBox(height: kDefaultPadding,),
              const SizedBox(
                width: 200,
                child: Text(
                  "Watch everything you want for free!",
                  maxLines: 2,
                  style: TextStyle(fontSize: 16,color: kTextColor,height: 1.5,),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: kDefaultPadding,),
              RoundedButton(title: 'Enter now',onPressed: (){
                Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => HomeScreen(),
                ),);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
