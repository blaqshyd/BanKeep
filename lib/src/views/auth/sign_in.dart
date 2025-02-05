// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../services/auth_services.dart';
import '../../../utils/constants/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  get isVisible => false;
  void logInUser() {
    // authService.signInUser(
    //   context: context,
    //   email: emailController.text,
    //   password: passwordController.text,
    // );
    MaterialPageRoute(
      builder: (context) => MainPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'Sign In',
                style: AppTextTheme.headLine,
              ),
              Spacer(),
              CustomFormField(
                textFieldLabel: 'Email Address',
                controller: emailController,
                prefixIcon: Icon(Iconsax.sms),
              ),
              CustomFormField(
                textFieldLabel: 'Password',
                controller: passwordController,
                obscureText: true,
                prefixIcon: Icon(Iconsax.lock_1),
                suffixIcon:
                    isVisible ? Icon(Iconsax.eye) : Icon(Iconsax.eye_slash),
              ),

              AppSizing.h30,

              // Sign in Button
              CustomButton(
                onPressed: logInUser,
                buttonText: 'Sign In',
              ),

              SizedBox(height: 20.0),
              AuthChange(
                ftext: 'Sign Up',
                text: 'I\'m a new user',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                ),
              ),

              Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }
}
