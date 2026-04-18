import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/Screens/homeScreen/taps/QuranTap/model/QuranRes.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class SouraDetailsScreen extends StatefulWidget {
  SouraDetailsScreen({super.key});

  @override
  State<SouraDetailsScreen> createState() => _SouraDetailsScreenState();
}

class _SouraDetailsScreenState extends State<SouraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;
    if (verses.isEmpty) {
      lodeSouraFile(index);
    }
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        centerTitle: true,
        title: Text(
          QuranRes.englishQuranSurahs[index],
          style: AppStyles.bold24primary,
        ),
        iconTheme: IconThemeData(color: AppColor.primary),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AssetsApp.MaskSuoraLift),
              Text(
                QuranRes.arabicAuranSuras[index],
                style: AppStyles.bold24primary,
                textAlign: TextAlign.center,
              ),
              Image.asset(AssetsApp.MaskSuoraRight),
            ],
          ),
          Expanded(
            child: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(color: AppColor.primary),
                  )
                : ListView.separated(
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return  Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(

                          ' (${index+1}) ${verses[index]}',
                          textAlign: TextAlign.center,
                          style: AppStyles.bold20white.copyWith(
                            color: AppColor.primary,
                          ),
                        ),
                      );;
                    },
              separatorBuilder: (context, index) => SizedBox(height: 10,),
                  ),
          ),
        ],
      ),
    );
  }

  void lodeSouraFile(int index) async {
    String Contant = await rootBundle.loadString(
      'assets/Files/Suras/${index + 1}.txt',
    );
    List<String> lines = Contant.split('\n');
    setState(() {
      verses = lines;
    });
  }
}
