import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/HadithTap/models/HadithRes.dart';
import 'package:quran_app/utils/AppColor.dart' show AppColor;
import 'package:quran_app/utils/AppStyles.dart' show AppStyles;
import 'package:quran_app/utils/AssetsApp.dart';

class Hadithdetailsscreen extends StatelessWidget {
  const Hadithdetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as HadithRes;
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,

        iconTheme: IconThemeData(color: AppColor.primary),
        title: Text(
          'Hadith',
          style: AppStyles.w700primary.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AssetsApp.MaskSuoraLift),
              Text(args.title, style: AppStyles.bold24primary),
              Image.asset(AssetsApp.MaskSuoraRight),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                args.content,
                style: AppStyles.bold24primary,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Image.asset(AssetsApp.Mosque),
        ],
      ),
    );
  }
}
