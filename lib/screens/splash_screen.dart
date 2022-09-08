// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_project/screens/onboarding.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => onboardingPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // child: Image.asset('assets/images/image1.jpg', height: 120.0),
            Image.asset(
              'assets/icons/hp_64px.png',
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(
              strokeWidth: 2.5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
