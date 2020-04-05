import 'package:eco_quiz/util/size.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:appBar(context,"EkoQuiz",false),
      body: ListView(
        children: <Widget>[
          menuButton(0.3, "Pembelajaran", "/menu_pembelajaran", Icons.desktop_windows,'assets/img/1.jpg', context),
          menuButton(0.3, "Tes", "/daftar_tes", Icons.edit,'assets/img/2.jpg', context),
          menuButton(0.3, "Hasil", "/hasil", Icons.content_paste,'assets/img/3.jpeg', context),
        ],
      ),
    );
  }
}

