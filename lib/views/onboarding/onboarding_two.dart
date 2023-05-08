// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class onboardingTwo extends StatelessWidget {
  const onboardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
           // Container(
            //   color: Colors.greenAccent,
            //   height: MediaQuery.of(context).size.height,
            //   width: double.infinity,
            //   child: 
            // ),

            Text("Onboarding Two",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
