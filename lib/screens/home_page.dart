// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
