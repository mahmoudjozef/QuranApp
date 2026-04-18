import 'package:flutter/material.dart';
import 'package:quran_app/utils/AppColor.dart';
import 'package:google_fonts/google_fonts.dart';
class AppStyles {
  static  TextStyle bold24primary = GoogleFonts.elMessiri(
    color: AppColor.primary,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle bold16primary = GoogleFonts.elMessiri(
    color: AppColor.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle bold24black = GoogleFonts.elMessiri(
    color: AppColor.blackColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle bold16black = GoogleFonts.elMessiri(
    color: AppColor.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle bold16white = GoogleFonts.elMessiri(
    color: AppColor.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle bold20white = GoogleFonts.elMessiri(
    color: AppColor.whiteColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle w700primary = GoogleFonts.elMessiri(
    fontWeight: FontWeight.w700,
    color: AppColor.primary,
  );
}
