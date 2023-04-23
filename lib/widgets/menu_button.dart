import 'package:flutter/material.dart';

Widget menuButton(String name, String route, IconData icon, Color color,
    BuildContext context) {
  var mediaQuerySize = MediaQuery.of(context).size;

  return GestureDetector(
    child: Container(
      height: mediaQuerySize.height / 3,
      width: mediaQuerySize.width,
      padding: EdgeInsets.symmetric(
          vertical: 0.005 * mediaQuerySize.height,
          horizontal: 0.005 * mediaQuerySize.width),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        height: mediaQuerySize.height * 0.3,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.black54,
                    size: 0.2115 * mediaQuerySize.width,
                  ),
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 0.2 * mediaQuerySize.width,
                  ),
                ],
              ),
              SizedBox(width: 0.05 * mediaQuerySize.width),
              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 0.1 * mediaQuerySize.width,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 8.0,
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      Navigator.pushNamed(context, route);
    },
  );
}
