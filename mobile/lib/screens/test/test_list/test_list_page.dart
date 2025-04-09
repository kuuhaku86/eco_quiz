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
      name: "Test About Numbers",
      route: TestPage.route,
      icon: Icons.edit,
      courseNum: 0,
    ),
    ListClass(
      name: "Test About Animals",
      route: TestPage.route,
      icon: Icons.edit,
      courseNum: 1,
    ),
    ListClass(
      name: "Test About History",
      route: TestPage.route,
      icon: Icons.edit,
      courseNum: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Test", true) as PreferredSizeWidget,
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: 3,
        itemBuilder:
            (BuildContext context, int index) => listCard(
              list[index].name,
              list[index].route,
              list[index].icon,
              list[index].courseNum,
              context,
            ),
      ),
    );
  }
}
