import 'package:eco_quiz/screens/result/result_page.dart';
import 'package:eco_quiz/screens/home/home_page.dart';
import 'package:eco_quiz/screens/learning/end_of_learning/end_of_learning_page.dart';
import 'package:eco_quiz/screens/learning/learning_menu/learning_menu_page.dart';
import 'package:eco_quiz/screens/learning/learning_video/learning_video_page.dart';
import 'package:eco_quiz/screens/test/test_list/test_list_page.dart';
import 'package:eco_quiz/screens/test/test_result/test_result_page.dart';
import 'package:eco_quiz/screens/test/test/test_page.dart';
import 'package:flutter/material.dart';

Widget route() {
  return MaterialApp(
    initialRoute: HomePage.route,
    routes: {
      HomePage.route: (context) => HomePage(),
      ResultPage.route: (context) => ResultPage(),
      EndOfLearningPage.route: (context) => EndOfLearningPage(),
      LearningMenuPage.route: (context) => LearningMenuPage(),
      LearningVideoPage.route: (context) => LearningVideoPage(),
      TestListPage.route: (context) => TestListPage(),
      TestPage.route: (context) => TestPage(),
      TestResultPage.route: (context) => TestResultPage(),
    },
  );
}
