import 'package:flutter/material.dart';

class OnboardProvider extends ChangeNotifier {
  final bool _lastPage = false;

  bool get lastPage => _lastPage;

  set onLastPage(page) {
    page = lastPage;
    notifyListeners();
  }
}
