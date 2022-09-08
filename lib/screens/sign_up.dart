// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
class sign_up_page extends StatelessWidget {
  const sign_up_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap:() => {
            Navigator.pop(context),
          },
          child: Text("data")),
      ),
    );
  }
}