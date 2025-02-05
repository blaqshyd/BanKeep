import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';
import 'fl_charts.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.h,
      width: 335.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'Current Balance',
                style: AppTextTheme.sTextStyle.copyWith(fontSize: 18),
              ),
              // AppSizing.h05,
              Text(
                '\$${8599.99}',
                style: AppTextTheme.pTextStyle.copyWith(fontSize: 26),
              ),
            ],
          ),
          // AppSizing.h30,
          const StatChart(),
        ],
      ),
    );
  }
}
