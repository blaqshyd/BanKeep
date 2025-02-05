import 'package:flutter/material.dart';
import 'package:bankeep/src/views/screens/home/components/transaction.dart';
import 'package:bankeep/utils/constants/exports.dart';

import '../../../widgets/tab_bar.dart';
import 'components/charts.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ScreenAppBar(
            text: 'Statistics',
            rightIcon: Iconsax.notification,
            leftIcon: Iconsax.arrow_left,
          ),
          AppSizing.h20,
          const Chart(),
          AppSizing.h10,
          const SeeMore(),
          AppSizing.h10,
          const Transactions()
        ],
      ),
    );
  }
}
