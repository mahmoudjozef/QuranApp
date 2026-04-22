import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/utils/AppRouts.dart';
import 'package:quran_app/utils/AppStyles.dart';

class SurasListWidget extends StatelessWidget {
  int index = 0;
  QuranRes res = QuranRes();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.pushNamed(context, AppRouts.quranDetailsRouteNamed,arguments: index),
          child: Row(
            spacing: 15,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/sur_number_frame.png'),
                  Text('${index + 1}', style: AppStyles.bold16white),
                ],
              ),
              Column(
                children: [
                  Text(
                    QuranRes.englishQuranSurahs[index],
                    style: AppStyles.bold20white,
                  ),
                  Text(QuranRes.verses[index], style: AppStyles.bold20white),
                ],
              ),
              Spacer(),
              Text(QuranRes.arabicAuranSuras[index], style: AppStyles.bold20white),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 15),
      itemCount: QuranRes.verses.length,
    );
  }
}
