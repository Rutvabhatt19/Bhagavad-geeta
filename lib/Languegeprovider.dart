import 'package:flutter/material.dart';

class Languegepro extends ChangeNotifier {
  bool a = true;
  void fun() {
    a = true;
    notifyListeners();
  }

  void fun2() {
    a = false;
    notifyListeners();
  }
}

class Languege2 extends ChangeNotifier {
  bool hin = true;
  bool eng = false;
  bool guj = false;
  void translationhin() {
    hin = true;
    eng = false;
    guj = false;

    notifyListeners();
  }

  void translationeng() {
    hin = false;
    eng = true;
    guj = false;

    notifyListeners();
  }

  void translationguj() {
    hin = false;
    eng = false;
    guj = true;

    notifyListeners();
  }
}
