import 'package:flutter/material.dart';
import 'package:my_project/utils/constants/exports.dart';

class AppConstants {
  static EdgeInsetsGeometry padding =
      EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h);

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColor.primaryColor,
      minimumSize: const Size(double.infinity, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ));
}
