import 'package:eco_quiz/util/list_class.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_card.dart';
import 'package:flutter/material.dart';

class DaftarTes extends StatefulWidget {
  const DaftarTes({Key key}) : super(key: key);

  @override
  _DaftarTesState createState() => _DaftarTesState();
}

class _DaftarTesState extends State<DaftarTes> {
    List<ListClass> list = [
    ListClass(name: "Course 1", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 2", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 3", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 4", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 5", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 6", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 7", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 8", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 9", route: "/tes", icon: Icons.edit, videoNum: 0),
    ListClass(name: "Course 10", route: "/tes", icon: Icons.edit, videoNum: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Tes", true),
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => listCard(
          list[index].name, list[index].route, list[index].icon, list[index].videoNum, context),
        ),
      );
  }
}