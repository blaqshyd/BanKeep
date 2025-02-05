import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static EdgeInsetsGeometry padding = EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h);

  static BorderRadiusGeometry borderRadius = BorderRadius.circular(12);

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: AppColor.primaryColor,
    minimumSize: const Size(double.infinity, 60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
