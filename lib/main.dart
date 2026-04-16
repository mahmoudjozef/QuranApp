import 'package:flutter/material.dart';
import 'package:quran_app/Screens/IntroScreen/IntroScreen.dart';
import 'package:quran_app/Screens/SplashScreen/SplashScreen.dart';
import 'package:quran_app/Screens/homeScreen/homeScreen.dart';
import 'package:quran_app/utils/AppRouts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        AppRouts.splashRouteNamed: (context) =>  Splashscreen(),
        AppRouts.introRouteNamed: (context) =>  IntroScreen(),
        AppRouts.homeRouteNamed: (context) =>  Homescreen(),
      },
    );
  }
}

