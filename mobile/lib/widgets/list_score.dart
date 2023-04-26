import 'package:flutter/material.dart';

Widget listScore(String name, int? score) => Card(
  child: ListTile(
    leading: Icon(Icons.assignment),
    title: Text(
      name
    ),
    trailing: Text(
      score.toString()
    ),
  ),
);