// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_project/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.email),
            Text(user.name),
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: const Text('Damina'),
      //   foregroundColor: Colors.white,
      //   centerTitle: true,
      //   elevation: 12.0,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.deepPurple,
        // fixedColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dash"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: "Books"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      // End of Bottom Navigation
    );
  }
}
