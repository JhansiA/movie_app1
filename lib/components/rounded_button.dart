import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 40.0,
        width: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: const LinearGradient(
            colors: [kGradientStartColor, kGradientEndColor]),
          backgroundBlendMode: BlendMode.screen,
          borderRadius: BorderRadius.circular(20.0),),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 35.0,
            width: 195,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              // gradient: LinearGradient(
              //     colors: [kGradientStartColor1, kGradientEndColor1]),
              borderRadius: BorderRadius.circular(20.0),),
              child: Text(title,style: const TextStyle(color: kTextColor,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
            ),
        ),
      ),
    );
  }
}