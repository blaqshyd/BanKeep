// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

import '../../../utils/constants/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    loadSplash();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> loadSplash() async {
    Future.delayed(
      Duration(seconds: 6),
      () {
        if (mounted) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardingPage(),
              ));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: RiveAnimation.asset(
          fit: BoxFit.cover,
          '${Assets.animation}vehicles.riv',
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
