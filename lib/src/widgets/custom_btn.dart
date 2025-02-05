import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? buttonText;
  const CustomButton({
    super.key,
    this.onPressed,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: AppConstants.buttonStyle,
      child: Text(
        buttonText!,
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}
