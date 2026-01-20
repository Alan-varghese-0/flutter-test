import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homescreen());
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'sliver app',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            backgroundColor: Colors.blueAccent,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              tooltip: 'menu',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment),
                tooltip: 'comment',
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                tooltip: 'setting',
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green,
                title: Center(child: Text('$index')),
              );
            }, childCount: 51),
          ),
        ],
      ),
    );
  }
}
