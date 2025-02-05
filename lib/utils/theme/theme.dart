import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.light,
    scaffoldBackgroundColor: AppColor.scaffoldColor,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.dark,
    scaffoldBackgroundColor: AppColor.navColor,
  );
}
