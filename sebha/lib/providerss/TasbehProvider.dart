// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TasbeehProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void makeItZero() {
    _counter = 0;
    notifyListeners();
  }

}
