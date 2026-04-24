import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';

class Radiopage extends StatelessWidget {
  const Radiopage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 141,
          width: 390,
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('assets/Radio/Mask group.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Radio Ibrahim Al-Akdar',style: AppStyles.bold24black,),
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
