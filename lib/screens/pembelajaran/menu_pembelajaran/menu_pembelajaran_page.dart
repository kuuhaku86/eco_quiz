import 'package:eco_quiz/util/list_class.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_card.dart';
import 'package:flutter/material.dart';

class MenuPembelajaranPage extends StatefulWidget {
  MenuPembelajaranPage({Key key}) : super(key: key);

  @override
  _MenuPembelajaranPageState createState() => _MenuPembelajaranPageState();
}

class _MenuPembelajaranPageState extends State<MenuPembelajaranPage> {
  List<ListClass> list = [
    ListClass(name: "Course 1", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 2", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 3", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 4", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 5", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 6", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 7", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 8", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 9", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
    ListClass(name: "Course 10", route: "/video_pembelajaran", icon: Icons.video_library, videoNum: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,"Pembelajaran",true),
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => listCard(
          list[index].name, list[index].route, list[index].icon, list[index].videoNum, context),
        ),
    );
  }
}