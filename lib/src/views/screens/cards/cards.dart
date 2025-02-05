import 'package:bankeep/src/views/screens/cards/components/slider.dart';
import 'package:bankeep/src/views/screens/home/components/transaction.dart';
import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';

import '../../../widgets/tab_bar.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScreenAppBar(
            text: 'My Card',
            rightIcon: Iconsax.add,
            leftIcon: Iconsax.arrow_left,
          ),
          AppSizing.h20,
          Image.asset(
            '${Assets.image}card.png',
            width: double.infinity,
          ),
          AppSizing.h10,
          const Transactions(),
          AppSizing.h10,
          Text(
            'Monthly Spending Limit',
            style: AppTextTheme.pTextStyle.copyWith(fontSize: 18.sp),
          ),
          AppSizing.h10,
          Container(
            padding: EdgeInsets.symmetric(
              // vertical: 8,
              horizontal: 16.w,
            ),
            height: 110.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.navColor,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0.r,
                    bottom: 5.r,
                  ),
                  child: Text(
                    'Amount: \$8,599.99',
                    style: AppTextTheme.pTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const CustomSlider(
                  minValue: 0,
                  maxValue: 100,
                  initialValue: 0,
                )
              ],
            ),
          ),
          AppSizing.h05
        ],
      ),
    );
  }
}
