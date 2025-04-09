import 'package:eco_quiz/screens/test/test/test_page.dart';
import 'package:eco_quiz/screens/test/test_result/test_result_page.dart';
import 'package:eco_quiz/utils/tes.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:flutter/material.dart';

Widget listJawaban(BuildContext context, String jawab, String kunci) {
  var mediaQuerySize = MediaQuery.of(context).size;

  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        shape: StadiumBorder(
          side: BorderSide(color: Colors.grey[300]!, width: 3.0),
        ),
        child: SizedBox(
          width: 0.7 * mediaQuerySize.width,
          height: 0.09 * mediaQuerySize.height,
          child: Center(
            child: Text(
              jawab,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: mediaQuerySize.width * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    ),
    onTap: () {
      if (jawab == kunci) {
        score += (soalJawaban[currentCourse][10]) as int;
      }

      if (numTes == (soalJawaban[currentCourse].length - 2)) {
        Navigator.pushNamed(context, TestResultPage.route);
      } else {
        numTes++;
        Navigator.pushNamed(context, TestPage.route);
      }
    },
  );
}
