import 'package:eco_quiz/utils/tes.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:flutter/material.dart';

Widget listCard(
  String name,
  String route,
  IconData icon,
  int courseNum,
  BuildContext context,
) {
  return Card(
    child: ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () {
        currentCourse = courseNum;
        currentVideo = 0;
        numTes = 0;
        score = 0;
        tesName = name;
        Navigator.pushNamed(context, route);
      },
    ),
  );
}
