import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/Widets/TextFiled.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/Widget/MostRecentlyItem.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/Widget/SurasListWidget.dart';
import 'package:quran_app/utils/AppStyles.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: MostRecentlyItem(),
          ),
          Text('Suras List',style: AppStyles.bold16white),
          Expanded(child: SurasListWidget()),

        ],
      ),
    );
  }
}
