import 'package:eco_quiz/screens/learning/learning_video/learning_video_page.dart';
import 'package:eco_quiz/utils/list_class.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_card.dart';
import 'package:flutter/material.dart';

class LearningMenuPage extends StatefulWidget {
  const LearningMenuPage({super.key});
  static final String route = "/learning_menu_page";

  @override
  _LearningMenuPageState createState() => _LearningMenuPageState();
}

class _LearningMenuPageState extends State<LearningMenuPage> {
  List<ListClass> list = [
    ListClass(
        name: "Course 1",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 2",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 3",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 4",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 5",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 6",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 7",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 8",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 9",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
    ListClass(
        name: "Course 10",
        route: LearningVideoPage.route,
        icon: Icons.video_library,
        videoNum: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Pembelajaran", true) as PreferredSizeWidget?,
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
