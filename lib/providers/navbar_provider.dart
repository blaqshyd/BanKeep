import 'package:flutter/material.dart';

class NavBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get getIndex => _currentIndex;
  // int get getIndex {
  //   return _currentIndex;
  // }

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
