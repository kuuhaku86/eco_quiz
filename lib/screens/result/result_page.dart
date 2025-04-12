import 'package:eco_quiz/utils/score.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_score.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});
  static final String route = "/result_page";

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late List scoreSementara;
  late int length;

  @override
  void initState() {
    super.initState();
    if (scoreHistory.isNotEmpty) {
      Iterable inReverse = scoreHistory.reversed;
      scoreSementara = inReverse.toList();
      length = scoreSementara.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Scoreboard", true) as PreferredSizeWidget?,
      body:
          scoreHistory.isNotEmpty
              ? ListView.builder(
                itemCount: length,
                itemBuilder:
                    (BuildContext context, int index) => listScore(
                      scoreSementara[index][1],
                      scoreSementara[index][0],
                    ),
              )
              : Container(),
      backgroundColor: Colors.grey[300],
    );
  }
}
