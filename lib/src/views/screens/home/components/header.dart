import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColor.sTextColor,
              minRadius: 26,
            ),
            AppSizing.w20,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome back\n',
                    style: AppTextTheme.sTextStyle.copyWith(fontSize: 12.sp),
                  ),
                  TextSpan(
                    // text: user.name,
                    text: 'Ayodele Daniel',
                    style: AppTextTheme.pTextStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CircleIcon(
          height: 42.h,
          width: 42.w,
          child: const Icon(Iconsax.search_normal),
        ),
      ],
    );
  }
}
