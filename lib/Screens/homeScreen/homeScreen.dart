import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/Widets/TextFiled.dart';
import 'package:quran_app/Screens/homeScreen/taps/HadithTap/HadithTap.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/QuranTap.dart';
import 'package:quran_app/Screens/homeScreen/taps/RadioTap/RadioTap.dart';
import 'package:quran_app/Screens/homeScreen/taps/SebhaTap/SebhaTap.dart';
import 'package:quran_app/Screens/homeScreen/taps/TimeTap/TimeTap.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    QuranTap(),
    HadithTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap(),
  ];
  List<String> images = [
    AssetsApp.backgroundQuran,
    AssetsApp.hadithBackground,
    AssetsApp.sebhaBackground,
    AssetsApp.radioBackground,
    AssetsApp.timeBackground,

  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Image.asset(
          images[selectedIndex],
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColor.primary,
            selectedItemColor: AppColor.whiteColor,
            unselectedItemColor: AppColor.blackColor,
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              buildNavItem(
                iconName: AssetsApp.icon_quran,
                label: 'Quran',
                index: 0,
              ),
              buildNavItem(
                iconName: AssetsApp.icon_hadeth,
                label: 'Hadeth',
                index: 1,
              ),
              buildNavItem(
                iconName: AssetsApp.icon_sebha,
                label: 'Sebha',
                index: 2,
              ),
              buildNavItem(
                iconName: AssetsApp.icon_radio,
                label: 'Radio',
                index: 3,
              ),
              buildNavItem(
                iconName: AssetsApp.icon_time,
                label: 'Time',
                index: 4,
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Column(
              spacing: height * 0.02,
              children: [
                SafeArea(child: Image.asset('assets/images/Logo.png')),
                Expanded(child: pages[selectedIndex]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem buildNavItem({
    required String iconName,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: selectedIndex == index
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),

              decoration: BoxDecoration(
                color: AppColor.black60TraColor,
                borderRadius: BorderRadius.circular(66),
              ),
              child: ImageIcon(AssetImage(iconName)),
            )
          : ImageIcon(AssetImage(iconName)),
      label: label,
    );
  }
}
