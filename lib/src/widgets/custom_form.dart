import 'package:flutter/material.dart';

import '../../utils/constants/exports.dart';

class CustomFormField extends StatelessWidget {
  final String textFieldLabel;
  final Widget? suffixIcon, prefixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  const CustomFormField({
    super.key,
    required this.textFieldLabel,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFieldLabel,
          style: AppTextTheme.sTextStyle,
        ),
        MyFormField(
          controller: controller,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          obscureText: obscureText ?? false,
          inputTextStyle: AppTextTheme.sTextStyle.copyWith(
            color: AppColor.pTextColor,
          ),
        ),
        AppSizing.h20,
      ],
    );
  }
}
