import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/Screens/homeScreen/taps/HadithTap/models/HadithRes.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class CarouselSliderUi extends StatefulWidget {
  const CarouselSliderUi({super.key, required this.index});

  final int index;

  @override
  State<CarouselSliderUi> createState() => _CarouselSliderUiState();
}

class _CarouselSliderUiState extends State<CarouselSliderUi> {
  HadithRes? Hadith;

  @override
  void initState() {
    super.initState(); // مهم جدًا
    lodeHadithFile(widget.index);
  }

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
                SizedBox(height: 15),
                Text(
                  Hadith?.title ?? '',
                  style: AppStyles.bold24black.copyWith(fontSize: 15),
                ),
                Expanded(child: Image.asset(AssetsApp.rightCorner)),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  Hadith?.content ?? '',
                  style: AppStyles.bold24black.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Image.asset(AssetsApp.Mosque),
          ],
        ),
      ),
    );
  }

  void lodeHadithFile(int index) async {
    String Files = await rootBundle.loadString(
      'assets/Files/Hadeeth/h${index + 1}.txt',
    );
    String title = Files.substring(0, Files.indexOf('\n'));
    String content = Files.substring(Files.indexOf('\n'));
    Hadith = HadithRes(content: content, title: title);
    setState(() {});
  }
}
