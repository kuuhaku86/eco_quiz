import 'package:eco_quiz/util/size.dart';
import 'package:eco_quiz/util/tes.dart';
import 'package:eco_quiz/util/video.dart';
import 'package:eco_quiz/widgets/list_jawaban.dart';
import 'package:flutter/material.dart';

class TesPage extends StatelessWidget {
  const TesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Container(
          height: 0.8*height,
          width: 0.9*width,
          decoration: BoxDecoration(
            border: Border.all(
              width:2.0,
              color: Colors.grey[300],
            ),
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(height*0.03),
              ),
              Text(
                soalJawaban[currentCourse][numTes][0],
                style: TextStyle(
                  fontSize: width*0.1,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              listJawaban(context, soalJawaban[currentCourse][numTes][1], soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][2], soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][3], soalJawaban[currentCourse][numTes][5]),
              listJawaban(context, soalJawaban[currentCourse][numTes][4], soalJawaban[currentCourse][numTes][5]),
            ],
          ),
        ),
      ),
    );
  }
}