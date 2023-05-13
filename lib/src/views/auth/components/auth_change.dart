import 'package:flutter/material.dart';

import '../../../../utils/constants/exports.dart';

class AuthChange extends StatelessWidget {
  final String text, ftext;
  final VoidCallback onPressed;
  const AuthChange({
    super.key,
    required this.text,
    required this.ftext,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextTheme.sTextStyle,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            ftext,
          ),
        ),
      ],
    );
  }
}
