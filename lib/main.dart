import 'package:flutter/material.dart';
import 'package:noise_detecter/screens/home.dart';
import 'package:noise_detecter/screens/saves.dart';
import 'package:noise_detecter/screens/info.dart';
import 'package:noise_detecter/screens/settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //hine debug label in right corner
      theme: ThemeData(
        fontFamily: 'Play',
      ),
      routes: {
        '/': (context) => const Home(),
        '/saves': (context) => const Saves(),
        '/info': (context) => const Info(),
        '/settings': (context) => const Settings()
      },
      initialRoute: '/',
    ),
  );
}
