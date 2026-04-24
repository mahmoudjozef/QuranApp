import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';

class Reciterspage extends StatelessWidget {
  const Reciterspage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 133,
          width: 390,
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Akram Alalaqmi',style: AppStyles.bold24black,),
                  SizedBox(height: 30),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Radio/Polygon 2.png'),
                        SizedBox(width: 10),
                        Image.asset('assets/Radio/Volume High.png'),
                      ]),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: 5,
    );
  }
}
