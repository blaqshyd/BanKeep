import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_project/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:my_project/screens/views/home/home_page.dart';
import 'package:my_project/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/user_provider.dart';
import '../utils/constants.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        username: username,
        email: email,
        token: '',
        password: password,
      );

      http.Response res = await http.post(
        Uri.parse('${Constants.uri}/register'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charsrt=UTF-8'
        },
      );
      httpErrorHandler(
        onSuccess: () {
          showSnackBar(context, 'Account created! Login with credentials');
        },
        context: context,
        response: res,
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      var userProvider = Provider.of<UserProvider>(context, listen: false);
      final navigator = Navigator.of(context);
      http.Response res = await http.post(
        Uri.parse('${Constants.uri}/login'),
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
              MaterialPageRoute(builder: (context) => const HomePage()),
              (route) => false);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

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

      var tokenRes = await http.post(Uri.parse('${Constants.uri}/tokenIsValid'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token!,
          });

      var response = jsonDecode(tokenRes.body);
      if (response == true){
        
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
