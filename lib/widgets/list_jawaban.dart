import 'package:eco_quiz/util/size.dart';
import 'package:eco_quiz/util/tes.dart';
import 'package:eco_quiz/util/video.dart';
import 'package:flutter/material.dart';

Widget listJawaban(BuildContext context,String jawab,String kunci) => GestureDetector(
  child: Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Card(
      shape: StadiumBorder(
        side: BorderSide(
          color: Colors.grey[300],
          width: 3.0
        )
      ),
      child: Container(
        width: 0.7*width,
        height: 0.09*height,
        child: Center(
          child: Text(
            jawab,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: width*0.07,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    ),
  ),
  onTap: () {
    if (jawab == kunci) {
      score += soalJawaban[currentCourse][10];
    }

    if(numTes == (soalJawaban[currentCourse].length - 2)) {
      Navigator.pushNamed(context, '/hasil_tes');
    } else {
      numTes++;
      Navigator.pushNamed(context, "/tes");
    }
  },
);