import 'package:eco_quiz/utils/score.dart';
import 'package:eco_quiz/utils/size.dart';
import 'package:eco_quiz/utils/tes.dart';
import 'package:flutter/material.dart';

class HasilTesPage extends StatelessWidget {
  const HasilTesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Container(
          height: 0.8 * height,
          width: 0.9 * width!,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Quiz Result :",
                  style: TextStyle(
                      fontSize: width! * 0.1,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                ),
              ),
              Container(
                height: 0.6 * width!,
                width: 0.6 * width!,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200.0)),
                    border:
                        Border.all(width: width! * 0.03, color: Colors.blue)),
                child: Center(
                  child: Text(
                    score.toString(),
                    style: TextStyle(
                        fontSize: width! * 0.275,
                        fontWeight: FontWeight.w700,
                        color: Colors.green[400]),
                  ),
                ),
              ),
              SizedBox(
                height: 0.02 * height,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    elevation: MaterialStatePropertyAll(10.0),
                  ),
                  child: Container(
                    width: width! * 0.7,
                    height: height * 0.1,
                    child: Center(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width! * 0.1,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onPressed: () {
                    scoreHistory.add([score, tesName]);
                    Navigator.of(context).popUntil(ModalRoute.withName("/"));
                  }),
              Padding(padding: EdgeInsets.only(bottom: height * 0.05)),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red[600]),
                    elevation: MaterialStatePropertyAll(10.0)),
                child: Container(
                  width: width! * 0.7,
                  height: height * 0.1,
                  child: Center(
                    child: Text(
                      "Scoreboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width! * 0.1,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  scoreHistory.add([score, tesName]);
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/hasil", ModalRoute.withName("/"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
