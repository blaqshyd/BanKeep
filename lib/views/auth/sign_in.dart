// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_formfield/my_formfield.dart';
import 'package:my_project/views/auth/sign_up.dart';
import '../../services/auth_services.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/hp_64px.png',
              ),
              SizedBox(
                height: 20.0,
              ),

              MyFormField(
                controller: emailController,
                border: OutlineInputBorder(),
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
                border: OutlineInputBorder(),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: logInUser,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: SizedBox(
                      // height: 40,
                      width: double.maxFinite,
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
