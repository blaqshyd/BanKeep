// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class onboardingOne extends StatelessWidget {
  const onboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,    
          children: const [
            // Container(
            //   color: Colors.redAccent,
            //   // height: MediaQuery.of(context).size.height,
            //   // width: double.infinity,
              
            // ),
            Text("Onboarding One",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text("This is some random text just to fill up the space... I don't know how this is supposed to work but i feel iit should work pretty well. It is well with our soul, innit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey,
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
