import 'package:flutter/material.dart';

class UProvider extends ChangeNotifier {
  String choice = "";

  UProvider({this.choice = ""});
  void changeChoice({required String newchoice}) async {
    choice = newchoice;
    notifyListeners();
  }
}
