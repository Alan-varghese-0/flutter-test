import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_2/homepage.dart';
import 'package:state_management_2/provider.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UProvider())],
      child: MaterialApp(home: Homepage()),
    );
  }
}
