import 'package:flutter/material.dart';

class MainScreenProvider extends ChangeNotifier {
  int _Pageindex = 0;
  int get Pageindex => _Pageindex;
  set PageIndex(int newindex) {
    _Pageindex = newindex;
    notifyListeners();
  }
}
