import 'package:flutter/material.dart';

class SebhaTap extends StatelessWidget {
  const SebhaTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/سَبِّحِ اسْمَ رَبِّكَ الأعلى.png'),
        ],
      ),
    );
  }
}
