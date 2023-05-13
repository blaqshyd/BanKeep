import 'package:flutter/material.dart';
import 'package:my_project/utils/constants/exports.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.light,
    scaffoldBackgroundColor: AppColor.scaffoldColor,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.dark,
  );
}
