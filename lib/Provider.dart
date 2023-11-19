import 'dart:convert';

import 'package:departure_bhagvadgeetaapp/Datamodal.dart';
import 'package:departure_bhagvadgeetaapp/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Provider1 extends ChangeNotifier {
  void Ontap() async {
    String a = await rootBundle.loadString('Assates/Jasonfile/chapter_1.json');
    List list = jsonDecode(a);
    modal1 = DataModal1.pars(list);
    print(modal1);
    notifyListeners();
  }
}

class Provider2 extends ChangeNotifier {
  void Ontap() async {
    String a = await rootBundle.loadString('Assates/Jasonfile/chapter_ 2.json');
    List list = jsonDecode(a);
    modal2 = DataModal2.pars(list);
    print(modal2);
    notifyListeners();
  }
}

class Provider3 extends ChangeNotifier {
  void Ontap() async {
    String a = await rootBundle.loadString('Assates/Jasonfile/chapter_3.json');
    List list = jsonDecode(a);
    modal3 = DataModal3.pars(list);
    print(modal3);
    notifyListeners();
  }
}

class Provider4 extends ChangeNotifier {
  void Ontap() async {
    String a = await rootBundle.loadString('Assates/Jasonfile/chapter_4.json');
    List list = jsonDecode(a);
    modal4 = DataModal4.pars(list);
    print(modal4);
    notifyListeners();
  }
}

class Provider5 extends ChangeNotifier {
  void Ontap() async {
    String a = await rootBundle.loadString('Assates/Jasonfile/chapter_5.json');
    List list = jsonDecode(a);
    modal5 = DataModal5.pars(list);
    print(modal5);
    notifyListeners();
  }
}

class Providerall extends ChangeNotifier {
  void Ontap() async {
    String a =
        await rootBundle.loadString('Assates/Jasonfile/all_chapters.json');
    List list = jsonDecode(a);
    modalall = DataModalall.pars(list);
    notifyListeners();
  }
}
