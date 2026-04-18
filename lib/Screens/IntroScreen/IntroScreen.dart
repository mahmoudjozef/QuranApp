import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppRouts.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: Text(''),
      bodyWidget: Text(
        "Welcome To Islmi App",
        style: TextStyle(
          color: AppColor.primary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      image: Image.asset(AssetsApp.intro1, fit: BoxFit.cover),
    ),
    PageViewModel(
      titleWidget: Text('Welcome To Islmi App', style: AppStyles.bold24primary),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        style: AppStyles.bold24primary,
        textAlign: TextAlign.center,
      ),
      image: Image.asset(AssetsApp.intro2, fit: BoxFit.cover),
    ),
    PageViewModel(
      titleWidget: Text('Reading the Quran', style: AppStyles.bold24primary),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        style: AppStyles.bold24primary,
        textAlign: TextAlign.center,
      ),
      image: Image.asset(AssetsApp.intro3, fit: BoxFit.cover),
    ),
    PageViewModel(
      titleWidget: Text('Bearish', style: AppStyles.bold24primary),
      bodyWidget: Text(
        "Praise the name of your Lord, the Most High",
        style: AppStyles.bold24primary,
        textAlign: TextAlign.center,
      ),
      image: Image.asset(AssetsApp.intro4, fit: BoxFit.cover),
    ),
    PageViewModel(
      titleWidget: Text('Holy Quran Radio', style: AppStyles.bold24primary),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: AppStyles.bold24primary,
        textAlign: TextAlign.center,
      ),
      image: Image.asset(AssetsApp.intro5, fit: BoxFit.cover),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      showNextButton: true,
      showSkipButton: true,
      skip: Text("Skip", style: AppStyles.w700primary),
      next: Text("Next", style: AppStyles.w700primary),
      done: Text("Done", style: AppStyles.w700primary),
      back: Text("Back", style: AppStyles.w700primary),
      onDone: () {
        Navigator.pushNamed(context, AppRouts.homeRouteNamed);
      },
      onSkip: () {
        Navigator.pushNamed(context, AppRouts.homeRouteNamed);
      },
      globalBackgroundColor: AppColor.blackColor,
      bodyPadding: EdgeInsets.only(top: 200),
      globalHeader: Image.asset('assets/images/Logo.png'),

      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColor.primary,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
