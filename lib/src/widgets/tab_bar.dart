import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';

class ScreenAppBar extends StatelessWidget {
  final String text;
  final IconData? leftIcon, rightIcon;
  final VoidCallback? onLeftTap, onRightTap;
  final bool isLeftDefault;
  const ScreenAppBar({
    super.key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    this.isLeftDefault = false,
    this.onLeftTap,
    this.onRightTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleIcon(
          onTap: onLeftTap ?? () => Navigator.of(context).pop(),
          child:
              isLeftDefault ? Icon(leftIcon) : const Icon(Iconsax.arrow_left),
        ),
        Text(
          text,
          style: AppTextTheme.pTextStyle.copyWith(fontSize: 18),
        ),
        CircleIcon(
          onTap: onRightTap,
          child: Icon(rightIcon),
        ),
      ],
    );
  }
}
