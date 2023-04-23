import 'package:eco_quiz/screens/learning/learning_menu/learning_menu_page.dart';
import 'package:eco_quiz/screens/test/test_list/test_list_page.dart';
import 'package:eco_quiz/screens/test/test_result/test_result_page.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Eco Quiz", false) as PreferredSizeWidget,
      body: ListView(
        children: <Widget>[
          menuButton(0.3, "Learning", LearningMenuPage.route,
              Icons.desktop_windows, 'assets/img/1.jpg', context),
          menuButton(0.3, "Test", TestListPage.route, Icons.edit,
              'assets/img/2.jpg', context),
          menuButton(0.3, "Result", TestResultPage.route, Icons.content_paste,
              'assets/img/3.jpeg', context),
        ],
      ),
    );
  }
}
