import 'package:flutter/material.dart';

Widget listCard(String name, String route, IconData icon, BuildContext context) {
  return Card(
    child: ListTile(
      leading: Icon(icon),
      title: Text(
        name
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    ),
  );
}