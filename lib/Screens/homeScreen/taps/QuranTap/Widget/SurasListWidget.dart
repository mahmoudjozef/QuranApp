import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/shared_preferences.dart';
import 'package:quran_app/utils/AppRouts.dart';
import 'package:quran_app/utils/AppStyles.dart';

class SurasListWidget extends StatefulWidget {
  List<int> filterList;
  SurasListWidget({required this.filterList});

  @override
  State<SurasListWidget> createState() => _SurasListWidgetState();
}

class _SurasListWidgetState extends State<SurasListWidget> {
  int index = 0;

  QuranRes res = QuranRes();

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      itemBuilder: (context, index) {
        int realIndex = widget.filterList[index];
        return InkWell(
          onTap: () {
            saveListSura(realIndex);
            setState(() {

            });
            Navigator.pushNamed(
              context,
              AppRouts.quranDetailsRouteNamed,
              arguments: realIndex,
            );
          },
          child: Row(
            spacing: 15,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/sur_number_frame.png'),
                  Text('${realIndex + 1}', style: AppStyles.bold16white),
                ],
              ),
              Column(
                children: [
                  Text(
                    QuranRes.englishQuranSurahs[realIndex],
                    style: AppStyles.bold20white,
                  ),
                  Text(QuranRes.verses[realIndex], style: AppStyles.bold20white),
                ],
              ),
              Spacer(),
              Text(
                QuranRes.arabicAuranSuras[realIndex],
                style: AppStyles.bold20white,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 15),
      itemCount:widget.filterList.length,
    );
  }
}
