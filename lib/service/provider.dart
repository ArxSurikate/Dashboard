import 'package:flutter/material.dart';

class CustomProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int getIndex() => _currentIndex;

  void changeIndex(index) {
    if (_currentIndex == index) return;
    _currentIndex = index;
    notifyListeners();
  }
}
