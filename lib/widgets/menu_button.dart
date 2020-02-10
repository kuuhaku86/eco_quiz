import 'package:eco_quiz/util/size.dart';
import 'package:flutter/material.dart';

Widget menuButton(double heightPercentage, String name, String route, Color color, IconData icon, BuildContext context ) {
  return MaterialButton(
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    color: color,
    elevation: 12.0,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 0.2*width,
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
            ),
          ),
        ],
      ),
    ),
    height: heightPercentage*height,
    minWidth: width,
  );
}