// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,
import 'package:flutter/material.dart';
import 'package:my_project/screens/onboarding.dart';
import 'package:my_project/screens/sign_in.dart';
import 'package:my_project/screens/sign_up.dart';
import 'package:my_project/screens/splash_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: welcomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => splashScreen(),
          '/sign_in': (context) => sign_in_page(),
          '/sign_up': (context) => sign_up_page(),
          '/onboarding': (context) => onboardingPage(), 
        }
        );
  }
}
