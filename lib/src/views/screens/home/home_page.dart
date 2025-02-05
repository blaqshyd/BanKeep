// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';

import 'components/quick_actions.dart';
import 'components/transaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HomeHeader(),
          AppSizing.h30,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              '${Assets.image}card.png',
              fit: BoxFit.cover,
            ),
          ),
          AppSizing.h20,
          const QuickActions(),
          AppSizing.h20,
          const SeeMore(),
          AppSizing.h05,
          const Transactions()
        ],
      ),
    );
  }
}
