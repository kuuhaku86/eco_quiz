import 'package:eco_quiz/screens/test/test/test_page.dart';
import 'package:eco_quiz/utils/list_class.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_card.dart';
import 'package:flutter/material.dart';

class TestListPage extends StatefulWidget {
  const TestListPage({super.key});
  static final String route = "/test_list_page";

  @override
  _TestListPageState createState() => _TestListPageState();
}

class _TestListPageState extends State<TestListPage> {
  List<ListClass> list = [
    ListClass(
        name: "Course 1", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 2", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 3", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 4", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 5", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 6", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 7", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 8", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 9", route: TestPage.route, icon: Icons.edit, videoNum: 0),
    ListClass(
        name: "Course 10",
        route: TestPage.route,
        icon: Icons.edit,
        videoNum: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Tes", true) as PreferredSizeWidget,
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => listCard(
            list[index].name,
            list[index].route,
            list[index].icon,
            list[index].videoNum,
            context),
      ),
    );
  }
}
