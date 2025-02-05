import 'package:flutter/material.dart';
import 'package:bankeep/src/views/screens/settings/components/profile/profile.dart';

import '../../../../../utils/constants/exports.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildGroupHeader('General'),
        buildListItem('Language', () {}),
        buildListItem(
            'My Profile',
            () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ))),
        buildListItem('Contact Us', () {}),
        buildGroupHeader('Security'),
        buildListItem('Change Password', () {}),
        buildListItem('Privacy', () {}),
        buildGroupHeader('Choose what data you share with us'),
        buildListItem(
          'Biometrics',
          () {},
          isBiometrics: true,
        ),
      ],
    );
  }
}

Widget buildGroupHeader(String title) {
  return Text(
    title,
    style: AppTextTheme.sTextStyle.copyWith(fontSize: 14.sp),
  );
}

Widget buildListItem(
  String title,
  VoidCallback? onTap, {
  bool isBiometrics = false,
}) {
  return ListTile(
    hoverColor: AppColor.navColor.withOpacity(0.4),
    contentPadding: EdgeInsets.symmetric(horizontal: 1.r),
    title: Text(
      title,
      style: AppTextTheme.pTextStyle.copyWith(fontSize: 14.sp),
    ),
    trailing: isBiometrics
        ? Switch.adaptive(
            activeColor: AppColor.sTextColor,
            value: true,
            onChanged: (value) {},
          )
        : const Icon(Iconsax.arrow_right_3),
    onTap: onTap,
  );
}
