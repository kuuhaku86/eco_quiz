import 'package:eco_quiz/screens/learning/learning_menu/learning_menu_page.dart';
import 'package:eco_quiz/screens/test/test_list/test_list_page.dart';
import 'package:eco_quiz/screens/test/test_result/test_result_page.dart';
import 'package:eco_quiz/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          menuButton("Learning", LearningMenuPage.route, Icons.desktop_windows,
              Colors.blue, context),
          menuButton(
              "Test", TestListPage.route, Icons.edit, Colors.green, context),
          menuButton("Result", TestResultPage.route, Icons.content_paste,
              Colors.yellow, context),
        ],
      ),
    );
  }
}
