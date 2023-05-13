import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/utils/constants/exports.dart';

abstract class AppTextTheme {
  static TextStyle headLine = GoogleFonts.poppins(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.pTextColor,
  );
  static TextStyle header = GoogleFonts.poppins(
    fontSize: 26.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle subheader = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.descTextColor,
  );

  static TextStyle pTextStyle = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.pTextColor,
  );

  static TextStyle sTextStyle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.sTextColor,
  );

  static TextStyle navTextStyle = GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.sTextColor,
  );

  //! Text Theme for light mode
  static TextTheme light = const TextTheme();

  //! Text Theme for dark mode
  static TextTheme dark = const TextTheme();
}
