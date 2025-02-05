import 'package:bankeep/src/views/screens/settings/components/profile/components/profile_header.dart';
import 'package:bankeep/src/views/screens/settings/components/profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';
import 'package:bankeep/src/widgets/tab_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.padding,
          child: Column(
            children: [
              ScreenAppBar(
                text: 'Profile',
                rightIcon: Iconsax.profile_tick,
                onRightTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    )),
              ),
              AppSizing.h30,
              Profileheader(user: user),
              AppSizing.h30,
              Expanded(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const Divider(height: 4),
                  itemCount: profileList.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                    leading: profileList[index].leading,
                    title: Text(
                      profileList[index].title,
                      style: AppTextTheme.pTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: profileList[index].trailing,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
