import 'package:eco_quiz/util/video.dart';
import 'package:flutter/material.dart';

Widget listCard(String name, String route, IconData icon, int videoNum, BuildContext context) {
  return Card(
    child: ListTile(
      leading: Icon(icon),
      title: Text(
        name
      ),
      onTap: () {
        currentCourse = videoNum;
        currentVideo = 0;
        Navigator.pushNamed(context, route);
      },
    ),
  );
}