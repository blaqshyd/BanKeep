import 'package:flutter/material.dart';
import 'package:bankeep/src/widgets/tab_bar.dart';

import '../../../../utils/constants/exports.dart';
import 'components/setting_opt.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScreenAppBar(
            onRightTap: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => true,
            ),
            text: 'Settings',
            rightIcon: Iconsax.logout,
          ),
          AppSizing.h30,
          const SettingsOption(),
        ],
      ),
    );
  }
}
