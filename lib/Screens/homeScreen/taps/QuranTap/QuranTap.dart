import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/Widets/TextFiled.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/Widget/MostRecentlyItem.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/Widget/SurasListWidget.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/shared_preferences.dart' show getListSura;
import 'package:quran_app/utils/AppStyles.dart';

class QuranTap extends StatefulWidget {
  QuranTap({super.key});

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
  List<int> filterList = List.generate(114, (index) => index);
  List<int> mostRecentList = [];
  @override
  void initState() {
    super.initState();
    loadRecent();
  }

  void loadRecent() async {
    mostRecentList = await getListSura();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            onChanged: (newText) {
              SearcherByTextFiled(newText);
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: MostRecentlyItem(filterList: mostRecentList),
          ),
          Text('Suras List', style: AppStyles.bold16white),
          Expanded(child: filterList.isEmpty
              ? Center(
            child: Text('No Data', style: AppStyles.bold20white),
          ): SurasListWidget(filterList: filterList,)),
        ],
      ),
    );
  }

  void SearcherByTextFiled(String newText) {
    List<int> filterSearcherList = [];
    for (int i = 0; i < QuranRes.arabicAuranSuras.length; i++) {
      if (QuranRes.arabicAuranSuras[i].contains(newText)) {
        filterSearcherList.add(i);
      }
    }
    for (int i = 0; i < QuranRes.englishQuranSurahs.length; i++) {
      if (QuranRes.englishQuranSurahs[i].contains(newText)) {
        filterSearcherList.add(i);
      }
    }
    filterList = filterSearcherList;
    setState(() {

    });
  }
}
