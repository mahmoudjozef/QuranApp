import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quran_app/Screens/homeScreen/taps/HadithTap/Widget/CarouselSliderUI.dart';

class HadithTap extends StatelessWidget {
  const HadithTap({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 618.0),
      items: List.generate(50, (index) => index,).map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselSliderUi(index: i,);
          },
        );
      }).toList(),
    );

  }
}

