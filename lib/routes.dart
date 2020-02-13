import 'package:eco_quiz/screens/hasil/hasil_page.dart';
import 'package:eco_quiz/screens/home/home_page.dart';
import 'package:eco_quiz/screens/pembelajaran/akhir_pembelajaran/akhir_pembelajaran_page.dart';
import 'package:eco_quiz/screens/pembelajaran/menu_pembelajaran/menu_pembelajaran_page.dart';
import 'package:eco_quiz/screens/pembelajaran/video_pembelajaran/video_pembelajaran_page.dart';
import 'package:eco_quiz/screens/tes/daftar_tes/daftar_tes_page.dart';
import 'package:eco_quiz/screens/tes/hasil_tes/hasil_tes_page.dart';
import 'package:eco_quiz/screens/tes/tes/tes_page.dart';
import 'package:flutter/material.dart';

Widget route() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/hasil': (context) => HasilPage(),
      '/akhir_pembelajaran': (context) => AkhirPembelajaranPage(),
      '/menu_pembelajaran': (context) => MenuPembelajaranPage(),
      '/video_pembelajaran': (context) => VideoPembelajaranPage(),
      '/akhir_pembelajaran': (context) => AkhirPembelajaranPage(),
      '/daftar_tes': (context) => DaftarTes(),
      '/tes': (context) => TesPage(),
      '/hasil_tes': (context) => HasilTesPage(),
    },
  );
}