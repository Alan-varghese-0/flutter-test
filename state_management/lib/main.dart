import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/mainpage.dart';
import 'package:state_management/userprovider.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Userprovider())],
      child: MaterialApp(home: Mainpage()),
    );
  }
}
