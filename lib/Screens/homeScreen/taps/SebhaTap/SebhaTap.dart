import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class SebhaTap extends StatefulWidget {
  SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double turns = 0.0;

  int counter = 0;

  int index = 0;

  List<String> Sebha = [
    'سبحان الله', // 33 مرة
    'الحمد لله', // 33 مرة
    'لا إله إلا الله', // 33 مرة
    'الله أكبر', // 33 مرة
    'سبحان الله وبحمده',
    'سبحان الله العظيم',
    'لا حول ولا قوة إلا بالله',
    'أستغفر الله',
    'اللهم صلِّ على محمد',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsApp.textSebhaBody),
          Image.asset(AssetsApp.SebhaBody2),
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedRotation(
                turns: turns,
                duration: Duration(milliseconds: 500),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      turns += 1 / 33;
                      counter++;
                      if (counter == 33) {
                        counter = 0;
                        index = (index + 1) % Sebha.length;
                      }
                    });
                  },
                  child: Image.asset(
                    AssetsApp.SebhaBody1,
                    height: 350,
                    width: 379,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(Sebha[index], style: AppStyles.bold20white),
                  Text('$counter', style: AppStyles.bold20white),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
