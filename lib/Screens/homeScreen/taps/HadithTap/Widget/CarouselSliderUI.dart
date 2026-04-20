import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class CarouselSliderUi extends StatelessWidget {
  const CarouselSliderUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.primary,
          image: DecorationImage(
            image: AssetImage(AssetsApp.hadithCardBackGroundItem),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Image.asset(AssetsApp.leftCorner)),
                Text('الحديث لاول', style: AppStyles.bold24black),
                Expanded(child: Image.asset(AssetsApp.rightCorner)),
              ],
            ),
            Expanded(child: ListView.builder(itemBuilder:(context, index) => Container(),)),
            Image.asset(AssetsApp.Mosque)
          ],
        ),
      ),
    );
  }
}
