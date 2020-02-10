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
      appBar:appBar("EkoQuiz"),
      body: ListView(
        children: <Widget>[
          menuButton(0.3, "Pembelajaran", "/menu_pembelajaran", Colors.yellow[600], Icons.desktop_windows, context),
          menuButton(0.3, "Tes", "/daftar_tes", Colors.greenAccent[400],Icons.edit, context),
          menuButton(0.3, "Hasil", "/hasil", Colors.red[600],Icons.content_paste, context),
        ],
      ),
    );
  }
}

