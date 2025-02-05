import 'package:bankeep/utils/constants/exports.dart';
import 'package:bankeep/src/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: AppConstants.padding,
        child: Column(
          children: [
            const ScreenAppBar(text: 'Edit Profile'),
            AppSizing.h30,
            CircleAvatar(
              maxRadius: 45.r,
              backgroundColor: AppColor.sTextColor,
              child: Image.asset('${Assets.image}avatar.png'),
            ),
            AppSizing.h20,
            Text(
              user.name,
              style: AppTextTheme.pTextStyle.copyWith(
                fontSize: 17.sp,
              ),
            ),
            AppSizing.h05,
            Text(
              user.username,
              style: AppTextTheme.sTextStyle.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
      )),
    );
  }
}
