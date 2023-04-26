import 'package:eco_quiz/utils/tes.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:eco_quiz/widgets/list_jawaban.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  static final String route = "/test_page";

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Container(
          height: 0.8 * mediaQuerySize.height,
          width: 0.9 * mediaQuerySize.width,
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
                padding: EdgeInsets.all(mediaQuerySize.height * 0.03),
              ),
              Text(
                soalJawaban[currentCourse][numTes][0],
                style: TextStyle(
                    fontSize: mediaQuerySize.width * 0.1,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: mediaQuerySize.height * 0.02,
              ),
              listJawaban(context, soalJawaban[currentCourse][numTes][1],
                  soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][2],
                  soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][3],
                  soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][4],
                  soalJawaban[currentCourse][numTes][5]),
            ],
          ),
        ),
      ),
    );
  }
}
