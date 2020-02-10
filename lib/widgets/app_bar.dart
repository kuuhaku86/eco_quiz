import 'package:flutter/material.dart';

Widget appBar(String text) {
  return  AppBar(
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    backgroundColor: Colors.white,
  );
}