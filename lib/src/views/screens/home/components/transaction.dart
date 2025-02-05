import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: transaction.length,
        itemBuilder: (context, index) => ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 6.h),
          leading: CircleIcon(
            child: Image.asset(
              transaction[index].avatar,
            ),
          ),
          title: Text(
            transaction[index].title,
            style: AppTextTheme.pTextStyle,
          ),
          subtitle: Text(
            transaction[index].tag,
            style: AppTextTheme.sTextStyle.copyWith(fontSize: 12),
          ),
          trailing: Text(
            '- \$${transaction[index].price}',
            style: AppTextTheme.pTextStyle,
          ),
        ),
      ),
    );
  }
}
