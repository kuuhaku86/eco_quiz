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
      name: "Learn About Numbers",
      route: LearningVideoPage.route,
      icon: Icons.video_library,
      courseNum: 0,
    ),
    ListClass(
      name: "Learn About Animals",
      route: LearningVideoPage.route,
      icon: Icons.video_library,
      courseNum: 1,
    ),
    ListClass(
      name: "Learn About History",
      route: LearningVideoPage.route,
      icon: Icons.video_library,
      courseNum: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Learning", true) as PreferredSizeWidget?,
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
