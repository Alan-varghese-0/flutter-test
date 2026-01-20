import 'package:flutter/material.dart';
import 'package:navigation_bar/page1.dart';
import 'package:navigation_bar/page2.dart';
import 'package:navigation_bar/page3.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Tabbar());
  }
}

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('app bar')),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'profile'),
              Tab(icon: Icon(Icons.home_filled), text: 'home'),
              Tab(icon: Icon(Icons.search), text: 'explore'),
            ],
          ),
        ),
        body: TabBarView(children: [Page1(), Page2(), Page3()]),
      ),
    );
  }
}
