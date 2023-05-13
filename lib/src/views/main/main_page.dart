import 'package:flutter/material.dart';

import '../../../utils/constants/exports.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<Widget> views = [
    const HomePage(),
    const Cards(),
    const Statistics(),
    const Settings(),
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
      selectedLabelStyle: AppTextTheme.navTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      unselectedLabelStyle: AppTextTheme.navTextStyle,
      backgroundColor: AppColor.navColor,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.wallet_2),
          label: "My Cards",
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.graph),
          label: "Statistics",
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.setting_2),
          label: "Settings",
        ),
      ],
    );
  }
}
