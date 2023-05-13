// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_project/utils/constants/exports.dart';

import '../../../models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HomeHeader(),
          AppSizing.h30,
          Image.asset('${Assets.image}card.png'),
          AppSizing.h30,
          const QuickActions(),
          AppSizing.h30,
          Row(
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
          ),
          AppSizing.h05,
          const Transactions()
        ],
      ),
    );
  }
}

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

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: ListView.builder(
        primary: true,
        shrinkWrap: false,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: iconMe.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleIcon(
                height: 54,
                width: 54,
                child: Icon(iconMe[index]),
              ),
              AppSizing.h10,
              Text(
                textMe[index],
                style: AppTextTheme.pTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
