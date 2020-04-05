import 'package:eco_quiz/util/size.dart';
import 'package:flutter/material.dart';

Widget menuButton(double heightPercentage, String name, String route, IconData icon,String image, BuildContext context ) {
  return GestureDetector(
    child: Container(
      height: heightPercentage*height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Icon(
                  icon, 
                  color: Colors.black54,
                  size: 0.2115*width,
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 0.2*width,
                ),
              ],
            ),
            SizedBox(
              width: 0.05*width
            )
            ,
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 0.1*width,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 8.0,
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: () {
      Navigator.pushNamed(context, route);
    },
  );
}