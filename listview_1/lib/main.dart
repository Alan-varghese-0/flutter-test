import 'package:flutter/material.dart';
import 'package:listview_1/list_1.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: List1());
  }
}
