import 'package:flutter/material.dart';
import 'package:movie_app/models/category.dart';

class Categories extends StatelessWidget {

  final kMovieDecor = BoxDecoration(gradient: const LinearGradient(
      colors: [Color(0xFF16CAF1), Color(0xFF0143A7)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter),
    borderRadius: BorderRadius.circular(24.0),);

  final kAnimeDecor = BoxDecoration(gradient: const LinearGradient(
      colors: [Color(0xFFFF2E2E), Color(0xFFE08939)],
    begin: Alignment.topCenter,
      end: Alignment.bottomCenter),
    borderRadius: BorderRadius.circular(24.0),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Categories.',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCard(category: categories[0],decoration: kMovieDecor,shape: 'left',),
            CategoryCard(category: categories[1],decoration: kAnimeDecor,shape: 'right',),
          ],
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category, required this.decoration, required this.shape}) : super(key: key);

  final Category category;
  final Decoration decoration;
  final String shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
          children: [
            shape =='left' ?
      Positioned(
        right: 0,
        bottom: 25,
        child: ClipPath(
            clipper: CustomPath(shape),
          child:Container(
            height: 150,
            width: 175,
            decoration: decoration,
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(category.category,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  Text('${category.numOfTitles} Titles',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ),
        ),
      ):
            Positioned(
              left: 0,
              bottom: 25,
              child: ClipPath(
                clipper: CustomPath(shape),
                child:Container(
                  height: 150,
                  width: 175,
                  decoration: decoration,
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(category.category,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                        Text('${category.numOfTitles} Titles',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            shape =='left' ?
            Positioned(
                  left: -15.0,
                  top: 0,
                  child: Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(category.backdrop),
                        ),
                      ),
                  ),
              ):
            Positioned(
              right: -5.0,
              bottom: 20,
              child: Container(
                height: 200,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(category.backdrop),
                  ),
                ),
              ),
            ),
            ],
          ),
        );
  }
}

class CustomPath extends CustomClipper<Path> {
  CustomPath(this.shape);
  final String shape;
  @override
  Path getClip(Size size) {
    final path = Path();
    if(shape == 'right'){
    path.lineTo(24, 0); //24 is radius shape size
    path.quadraticBezierTo(
        size.width-14, 10, size.width, 44);
    path.lineTo(size.width , size.height);
    path.lineTo(0, size.height);
    path.close();
    }
    else{
      path.moveTo(size.width-24, 0);
      path.quadraticBezierTo(
          24, 10, 0, 44);
      path.lineTo(0 , size.height);
      path.lineTo(size.width , size.height);
      path.lineTo(size.width, 0);
      path.close();
    }
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
