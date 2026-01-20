import 'package:flutter/material.dart';
import 'package:splash__/splash.dart';

void main(List<String> args) {
  runApp(App());
}
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_screen(),
    );
  }
}
