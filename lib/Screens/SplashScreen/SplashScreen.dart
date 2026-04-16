import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppRouts.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushNamed(context, AppRouts.introRouteNamed);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsApp.splashScreen),
            fit: BoxFit.cover,

          ),
        ),
      ),
    );
  }
}
