import 'package:eco_quiz/screens/home/home_page.dart';
import 'package:eco_quiz/screens/test/test/test_page.dart';
import 'package:flutter/material.dart';

class EndOfLearningPage extends StatelessWidget {
  const EndOfLearningPage({super.key});
  static final String route = "/end_of_learning_page";

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Learning Done!!!\nContinue to Test?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: mediaQuerySize.width * 0.12,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQuerySize.height * 0.05),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              elevation: WidgetStatePropertyAll(10.0),
            ),
            child: SizedBox(
              width: mediaQuerySize.width * 0.7,
              height: mediaQuerySize.height * 0.1,
              child: Center(
                child: Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: mediaQuerySize.width * 0.1,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                TestPage.route,
                ModalRoute.withName(HomePage.route),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQuerySize.height * 0.05),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red[600]),
              elevation: WidgetStatePropertyAll(10.0),
            ),
            child: SizedBox(
              width: mediaQuerySize.width * 0.7,
              height: mediaQuerySize.height * 0.1,
              child: Center(
                child: Text(
                  "No",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: mediaQuerySize.width * 0.1,
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
        ],
      ),
    );
  }
}
