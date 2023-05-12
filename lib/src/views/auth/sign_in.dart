// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_formfield/my_formfield.dart';
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
  void logInUser() {
    authService.signInUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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

                MyFormField(
                  controller: emailController,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                  inputLabel: "Email Address",
                ),
                SizedBox(height: 20),
                MyFormField(
                  obscureText: true,
                  controller: passwordController,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  inputLabel: "Password",
                ),

                SizedBox(
                  height: 25.0,
                ),

                // Sign in Button
                CustomButton(
                  onPressed: logInUser,
                  buttonText: 'Sign In',
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I'm a new user"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
