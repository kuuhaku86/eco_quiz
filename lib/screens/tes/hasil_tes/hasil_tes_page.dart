import 'package:eco_quiz/util/size.dart';
import 'package:eco_quiz/util/tes.dart';
import 'package:flutter/material.dart';

class HasilTesPage extends StatelessWidget {
  const HasilTesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Quiz Result :",
                  style: TextStyle(
                    fontSize: width*0.1,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[600]
                  ),
                ),
              ),
              Container(
                height: 0.5*width,
                width: 0.5*width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  border: Border.all(
                    width: width*0.03,
                    color: Colors.blue
                  )
                ),
                child: Center(
                  child: Text(
                    score.toString(),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}