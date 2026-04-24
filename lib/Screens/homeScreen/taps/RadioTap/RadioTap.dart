import 'package:flutter/material.dart';
import 'package:quran_app/Screens/homeScreen/taps/RadioTap/Widget/toggle_switch.dart';
import 'package:quran_app/Screens/homeScreen/taps/RadioTap/pages/RadioPage.dart';
import 'package:quran_app/Screens/homeScreen/taps/RadioTap/pages/RecitersPage.dart';

class RadioTap extends StatefulWidget {
  RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyToggleSwitch(
                selectedIndex: selectedIndex,
                onChanged: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
              ),
            ],
          ),
          Expanded(child: selectedIndex == 0 ? Radiopage() : Reciterspage()),
        ],
      ),
    );
  }
}
