import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColor.sTextColor,
                minRadius: 26,
                backgroundImage: AssetImage('${Assets.image}avatar.png'),
              ),
              AppSizing.w20,
              FittedBox(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome back\n',
                        style:
                            AppTextTheme.sTextStyle.copyWith(fontSize: 12.sp),
                      ),
                      TextSpan(
                        // text: user.name,
                        text: user.name,
                        style: AppTextTheme.pTextStyle.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
