// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/utils/theme/text_theme.dart';

class OnboardDetails extends StatelessWidget {
  const OnboardDetails({
    Key? key,
    required this.header,
    required this.desc,
    required this.image,
  }) : super(key: key);

  final String header, desc, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(image),
            Spacer(),
            Text(
              header,
              textAlign: TextAlign.center,
              style: AppTextTheme.header,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: AppTextTheme.subheader,
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
