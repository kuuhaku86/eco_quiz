import 'package:flutter/material.dart';

Widget appBar(BuildContext context,String text,bool needBack) {
  return  AppBar(
    leading: needBack? GestureDetector(
      child: Icon(
        Icons.arrow_back,
        color: Colors.grey[600],
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    ) : null,
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