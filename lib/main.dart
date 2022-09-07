import 'package:flutter/material.dart';
import 'package:noise_detecter/screens/home.dart';
import 'package:noise_detecter/screens/saves.dart';
import 'package:noise_detecter/screens/info.dart';
import 'package:noise_detecter/screens/settings.dart';

class AllRoutes {
  static const String home = '/';
  static const String saves = '/saves';
  static const String info = '/info';
  static const String settings = '/settings';
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //hine debug label in right corner
      theme: ThemeData(
        fontFamily: 'Play',
      ),
      routes: {
        AllRoutes.home: (context) => const Home(),
        AllRoutes.saves: (context) => const Saves(),
        AllRoutes.info: (context) => const Info(),
        AllRoutes.settings: (context) => const Settings()
      },
      initialRoute: '/',
    ),
  );
}
