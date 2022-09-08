// ignore_for_file: camel_case_types, ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/screens/sign_up.dart';
import 'home_page.dart';

class sign_in_page extends StatelessWidget {
  const sign_in_page({Key? key}) : super(key: key);

  // void _signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "L O G O ",
            //   style: TextStyle(
            //     fontSize: 32.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Image.asset(
              'assets/icons/hp_64px.png',
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
              child: TextFormField(
                decoration: InputDecoration(
                  // alignLabelWithHint: true,
                  labelText: "Username",
                  // hintText: "Enter Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
              child: TextFormField(
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home_page()));
                },
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
                            builder: (context) => sign_up_page()));
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



     // MaterialButton(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: RichText(
            //         text: TextSpan(
            //           children: [
            //             TextSpan(text: "New user?",
            //             style: TextStyle(color: Colors.black)),
            //             TextSpan(
            //                 text: " Sign Up",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.deepPurple,
            //                 ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //             builder: (context) => sign_up_page()));
            //     },
            //     ),