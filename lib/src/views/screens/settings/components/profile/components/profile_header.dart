import 'package:flutter/material.dart';

import '../../../../../../../utils/constants/exports.dart';

class Profileheader extends StatelessWidget {
  const Profileheader({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          minRadius: 35,
          backgroundColor: AppColor.sTextColor,
          backgroundImage: AssetImage('${Assets.image}avatar.png'),
        ),
        AppSizing.w20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              user.name,
              style: AppTextTheme.pTextStyle.copyWith(
                fontSize: 17.sp,
              ),
            ),
            AppSizing.h05,
            Text(
              user.username,
              style: AppTextTheme.sTextStyle.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
      ],
    );
  }
}
