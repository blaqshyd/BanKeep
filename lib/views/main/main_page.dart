import 'package:flutter/material.dart';
import 'package:my_project/providers/navbar_provider.dart';
import 'package:my_project/views/screens/home/home_page.dart';
import 'package:my_project/views/screens/profile/profile.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<Widget> views = [
    const HomePage(),
    const ProfileScreen(),
    const HomePage(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var selectedIndex = Provider.of<NavBarProvider>(context); //Provider for BottomNavBar
    var currentIndex = selectedIndex.getIndex;

    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex.updateIndex(index);
        },
        currentIndex: currentIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey[900],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dash"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: "Books"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
