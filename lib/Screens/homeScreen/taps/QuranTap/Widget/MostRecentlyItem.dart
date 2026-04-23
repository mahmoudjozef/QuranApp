import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class MostRecentlyItem extends StatelessWidget {
List<int> filterList;
  MostRecentlyItem({super.key,required this.filterList});

  final QuranRes res = QuranRes();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: filterList.length,
      itemBuilder: (context, index) {
        return Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(QuranRes.englishQuranSurahs[index],style: AppStyles.bold24black,),
                    Text(QuranRes.arabicAuranSuras[index],style: AppStyles.bold24black,),
                    Text("${QuranRes.verses[index]} Verses",style: AppStyles.bold16black,),
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    AssetsApp.mostRecent,
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) =>
      const SizedBox(width: 10),
    );
  }
}