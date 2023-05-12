import 'package:flutter/material.dart';
import 'package:my_project/src/views/screens/home/home_page.dart';
import 'package:my_project/src/views/screens/profile/profile.dart';

import '../../../utils/constants/exports.dart';

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
    var selectedIndex =
        Provider.of<NavBarProvider>(context); //Provider for BottomNavBar
    var currentIndex = selectedIndex.getIndex;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.padding,
          child: views[currentIndex],
        ),
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: selectedIndex,
        currentIndex: currentIndex,
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.currentIndex,
  });

  final NavBarProvider selectedIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? const Icon(Iconsax.home)
              : const Icon(Iconsax.home_1),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? const Icon(Iconsax.message_add)
              : const Icon(Iconsax.message),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? const Icon(Iconsax.user_tag1)
              : const Icon(Iconsax.user_tag),
          label: "Books",
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 3
              ? const Icon(Iconsax.user4)
              : const Icon(Iconsax.user),
          label: "Profile",
        ),
      ],
    );
  }
}
