// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_project/utils/constants/exports.dart';

class AuthService {
//! Register the user

  void signUpUser({
    required BuildContext context,
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final navigator = Navigator.of(context);

      User user = User(
        id: '',
        name: name,
        username: username,
        email: email,
        token: '',
        password: password,
      );

      http.Response res = await http.post(
        Uri.parse('${Assets.uri}/register'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );
      httpErrorHandler(
        onSuccess: () {
          Future.delayed(
            const Duration(seconds: 2),
            () {
              showSnackBar(context, 'Account created! Login with credentials');

              navigator.push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          );
        },
        context: context,
        response: res,
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

//! Login the user
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      var userProvider = Provider.of<UserProvider>(context, listen: false);
      final navigator = Navigator.of(context);
      http.Response res = await http.post(
        Uri.parse('${Assets.uri}/login'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charsrt=UTF-8'
        },
      );
      httpErrorHandler(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          userProvider.setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          navigator.pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => MainPage()),
              (route) => false);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

//! Get user info
  void getUserData(
    BuildContext context,
  ) async {
    try {
      var userProvider = Provider.of<UserProvider>(context, listen: false);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');
      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(Uri.parse('${Assets.uri}/tokenIsValid'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token!,
          });

      var response = jsonDecode(tokenRes.body);
      if (response == true) {}
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
