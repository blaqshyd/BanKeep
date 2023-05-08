// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_project/providers/navbar_provider.dart';
import 'package:my_project/providers/user_provider.dart';
import 'package:my_project/views/onboarding/onboarding.dart';
import 'package:my_project/views/auth/sign_in.dart';
import 'package:my_project/views/auth/sign_up.dart';
import 'package:my_project/views/screens/profile/profile.dart';
import 'package:my_project/views/welcome/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
          ChangeNotifierProvider(create: (_) => NavBarProvider())
        ],
        child: DevicePreview(
          enabled: true,
          builder: (context) => const MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => splashScreen(),
          '/sign_in': (context) => RegisterPage(),
          '/sign_up': (context) => LoginPage(),
          '/profile': (context) => ProfileScreen(),
          '/onboarding': (context) => onboardingPage(),
        });
  }
}
