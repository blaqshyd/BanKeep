import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Transaction',
          style: AppTextTheme.pTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppTextTheme.sTextStyle.copyWith(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
