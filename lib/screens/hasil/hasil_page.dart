import 'package:eco_quiz/util/score.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
import 'package:eco_quiz/widgets/list_score.dart';
import 'package:flutter/material.dart';

class HasilPage extends StatefulWidget {
  const HasilPage({Key key}) : super(key: key);

  @override
  _HasilPageState createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
  List scoreSementara;
  int length;

  @override
  void initState() {
    super.initState();
    if(scoreHistory.length > 0){
      Iterable inReverse = scoreHistory.reversed;
      scoreSementara = inReverse.toList();
      length = scoreSementara.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Scoreboard", true),
      body: scoreHistory.length > 0 ? ListView.builder(
        itemCount: length,
        itemBuilder: (BuildContext context, int index) => listScore(scoreSementara[index][1], scoreSementara[index][0])
      ) : Container(),
      backgroundColor: Colors.grey[300],
    );
  }
}