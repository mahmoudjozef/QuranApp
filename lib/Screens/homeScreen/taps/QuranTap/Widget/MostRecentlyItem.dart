import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/shared_preferences.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class MostRecentlyItem extends StatefulWidget {

  MostRecentlyItem({super.key,});

  @override
  State<MostRecentlyItem> createState() => _MostRecentlyItemState();
}

class _MostRecentlyItemState extends State<MostRecentlyItem> {
  List<int> mostRecentList = [];

  void initState() {
    super.initState();
    loadRecent();
  }

  void loadRecent() async {
    mostRecentList = await getListSura();
    setState(() {});
  }
  final QuranRes res = QuranRes();

  @override
  Widget build(BuildContext context) {
    return mostRecentList.isEmpty
        ? SizedBox()
        :
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Most Recently', style: AppStyles.bold16white),
     SizedBox(
       height: 150,
       child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: mostRecentList.length,
            itemBuilder: (context, index) {
              int realIndex =mostRecentList[index];
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
                          Text(QuranRes.englishQuranSurahs[realIndex],style: AppStyles.bold24black,),
                          Text(QuranRes.arabicAuranSuras[realIndex],style: AppStyles.bold24black,),
                          Text("${QuranRes.verses[realIndex]} Verses",style: AppStyles.bold16black,),
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
          ),
     ),
      ],
    );
  }
}