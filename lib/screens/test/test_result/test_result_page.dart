import 'package:eco_quiz/screens/home/home_page.dart';
import 'package:eco_quiz/screens/result/result_page.dart';
import 'package:eco_quiz/utils/score.dart';
import 'package:eco_quiz/utils/tes.dart';
import 'package:flutter/material.dart';

class TestResultPage extends StatelessWidget {
  const TestResultPage({super.key});
  static final String route = "/test_result_page";

  @override
  Widget build(BuildContext context) {
    var mediaSizeQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Container(
          height: 0.8 * mediaSizeQuery.height,
          width: 0.9 * mediaSizeQuery.width,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Quiz Result :",
                  style: TextStyle(
                    fontSize: mediaSizeQuery.width * 0.075,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                height: 0.6 * mediaSizeQuery.width,
                width: 0.6 * mediaSizeQuery.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200.0)),
                  border: Border.all(
                    width: mediaSizeQuery.width * 0.03,
                    color: Colors.blue,
                  ),
                ),
                child: Center(
                  child: Text(
                    score.toString(),
                    style: TextStyle(
                      fontSize: mediaSizeQuery.width * 0.25,
                      fontWeight: FontWeight.w700,
                      color: Colors.green[400],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.04 * mediaSizeQuery.height),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  elevation: WidgetStatePropertyAll(10.0),
                ),
                child: SizedBox(
                  width: mediaSizeQuery.width * 0.5,
                  height: mediaSizeQuery.height * 0.085,
                  child: Center(
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaSizeQuery.width * 0.075,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(
                    context,
                  ).popUntil(ModalRoute.withName(HomePage.route));
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: mediaSizeQuery.height * 0.03),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red[600]),
                  elevation: WidgetStatePropertyAll(10.0),
                ),
                child: SizedBox(
                  width: mediaSizeQuery.width * 0.5,
                  height: mediaSizeQuery.height * 0.085,
                  child: Center(
                    child: Text(
                      "Scoreboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaSizeQuery.width * 0.075,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    ResultPage.route,
                    ModalRoute.withName(HomePage.route),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
