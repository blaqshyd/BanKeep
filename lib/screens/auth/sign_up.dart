// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/screens/auth/sign_in.dart';
import 'package:my_project/services/auth_services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final AuthService authService = AuthService();

  void registerUser() {
    authService.signUpUser(
      context: context,
      name: nameController.text,
      username: usernameController.text,
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/hp_64px.png',
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: "Full name",
                  // hintText: "Enter Password",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  // alignLabelWithHint: true,
                  labelText: "Username",
                  // hintText: "Enter Username",
                  prefixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  // alignLabelWithHint: true,
                  labelText: "Email address",
                  // hintText: "Enter Username",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: "Password",
                  // hintText: "Enter Password",
                  prefixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),

            // Sign in Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: registerUser,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: SizedBox(
                    // height: 40,
                    width: double.maxFinite,
                    child: Text(
                      'Sign Up',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
    );
  }
}
