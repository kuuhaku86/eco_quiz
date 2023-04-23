import 'package:eco_quiz/utils/size.dart';
import 'package:flutter/material.dart';

class AkhirPembelajaranPage extends StatelessWidget {
  const AkhirPembelajaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Pembelajaran Selesai!!!\nLanjut Tes?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: width!*0.12,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:height*0.05)
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              elevation: MaterialStatePropertyAll(10.0),
            ),
            child: Container(
              width: width!*0.7,
              height: height*0.1,
              child: Center(
                child: Text(
                  "Ya",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width!*0.1,
                      fontWeight: FontWeight.w800,
                    ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil("/tes", ModalRoute.withName("/"));
            }
          ),
          Padding(
            padding: EdgeInsets.only(bottom:height*0.05)
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red[600]),
              elevation: MaterialStatePropertyAll(10.0),
            ),
            child: Container(
              width: width!*0.7,
              height: height*0.1,
              child: Center(
                child: Text(
                  "Tidak",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width!*0.1,
                      fontWeight: FontWeight.w800,
                    ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).popUntil(ModalRoute.withName("/"));
            },
          ),
        ],
      ),
    );
  }
}