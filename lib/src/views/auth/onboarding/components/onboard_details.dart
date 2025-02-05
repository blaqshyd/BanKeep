// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';

class OnboardDetails extends StatelessWidget {
  const OnboardDetails({
    super.key,
    required this.header,
    required this.desc,
    required this.image,
  });

  final String header, desc, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            FadeInRight(
              child: SvgPicture.asset(
                image,
                height: 250.h,
              ),
            ),
            Spacer(),
            FadeInDown(
              child: Text(
                header,
                textAlign: TextAlign.center,
                style: AppTextTheme.header,
              ),
            ),
            SizedBox(height: 10.0),
            FadeInUp(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: AppTextTheme.subheader,
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
