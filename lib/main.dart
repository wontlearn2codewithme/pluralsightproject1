import 'package:flutter/material.dart';
import 'package:pluralsightproject1/screens/bmi_screen.dart';
import 'package:pluralsightproject1/screens/intro_screen_page.dart';

void main(List<String> args) {
  runApp(const GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        '/': ((context) => const IntroScreenPage()),
        '/bmi': (context) => const BMIScreen()
      },
      initialRoute: '/',
    );
  }
}
