import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:quran_app/utils/AppStyles.dart';
import 'package:quran_app/utils/AssetsApp.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.bold24primary.copyWith(color: AppColor.whiteColor),
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: AppStyles.bold16primary.copyWith(color: AppColor.whiteColor),
        prefixIcon:Image.asset(AssetsApp.icon_quran,color: AppColor.primary),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: AppColor.primary),
  );
}
