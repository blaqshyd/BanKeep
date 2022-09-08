// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:my_project/screens/onboarding.dart';


class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  int _timerLeft = 5;

// Countdown Timer
  // void _startCount() {
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     if (_timerLeft > 0) {
  //       setState(() {
  //         _timerLeft = _timerLeft - 1;
  //       });
  //     } else {
  //       timer.cancel();
  //       // Navigator.pushNamed(context, "/Sign_in_page");
  //       // Pushing another page to the screen using .pushNamed requires the intialroute in MaterialApp
  //       Navigator.push(context, MaterialPageRoute(
  //             builder: (context) => onboardingPage(),
  //           ));
  //     }
  //   });
  // // End Timer
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => onboardingPage(),)),
              child: Text(
                _timerLeft.toString(),
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            // ElevatedButton(child: Text('CLICK ME'), onPressed: _startCount),
          ],
        ),
      ),
    );
  }
}
