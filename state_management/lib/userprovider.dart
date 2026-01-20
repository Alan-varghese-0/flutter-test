import 'package:flutter/material.dart';

class Userprovider extends ChangeNotifier {
  String username = "";
  Userprovider({this.username = 'jone doe'});
  void changeusername({required String newUsername}) async {
    username = newUsername;
    notifyListeners();
  }
}
