// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_project/providers/user_provider.dart';
import 'package:my_project/screens/onboarding.dart';
import 'package:my_project/screens/sign_in.dart';
import 'package:my_project/screens/sign_up.dart';
import 'package:my_project/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
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
          '/onboarding': (context) => onboardingPage(),
        });
  }
}
