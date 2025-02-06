// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:bankeep/src/services/auth_services.dart';

import '../../../utils/constants/exports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final authService = AuthService();

  get isVisible => false;

  void registerUser() {
    // authService.signUpUser(
    //   context: context,
    //   name: nameController.text,
    //   username: usernameController.text,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizing.h30,
                AppSizing.h30,
                AppSizing.h30,

                Text(
                  'Sign Up',
                  style: AppTextTheme.headLine,
                ),
                // Spacer(),
                AppSizing.h30,
                CustomFormField(
                  textFieldLabel: 'Full name',
                  controller: nameController,
                  prefixIcon: Icon(Iconsax.profile_circle),
                ),

                CustomFormField(
                  textFieldLabel: 'Username',
                  controller: usernameController,
                  prefixIcon: Icon(Iconsax.attach_circle),
                ),
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
                SizedBox(
                  height: 25.0,
                ),

                // Sign in Button
                CustomButton(
                  onPressed: registerUser,
                  buttonText: 'Sign Up',
                ),
                SizedBox(height: 20.0),
                AuthChange(
                  ftext: 'Sign In',
                  text: 'Already have an account.',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
