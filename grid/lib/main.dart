import 'package:flutter/material.dart';
import 'package:grid/page_1.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: List1());
  }
}
