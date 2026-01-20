import 'package:flutter/material.dart';
import 'package:login_1/sign_in.dart';

void main(List<String> args) {
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      title: 'login',
    );
  }
}
