import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: casts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
          childAspectRatio: (1 / .4)),
          itemBuilder: (BuildContext context, int index)=> CastCard(cast: casts[index]),
      ),
    );
  }
}

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF000000),
          border: Border.all(color: kTextLightColor,width: 0.1,strokeAlign: StrokeAlign.outside),
          //   border: Border.all(color: Color(0xFF5E5E5E)),

          borderRadius: BorderRadius.circular(16.0),),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 6,
              child:
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(cast['image']),
                    ),
                  ),
                ),
            ),
                Positioned(
                  right: 10,
                  bottom: 18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cast['originalName'],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      Text(cast['movieName'],style: const TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
