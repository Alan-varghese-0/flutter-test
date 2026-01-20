import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('venture'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text('app drawer')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Alan varghese',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                accountEmail: Text(
                  'alanvarghses@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      'AV',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.person), title: Text('profile')),
            ListTile(leading: Icon(Icons.message), title: Text('Q&A')),
            ListTile(leading: Icon(Icons.search), title: Text('search')),
            ListTile(leading: Icon(Icons.settings), title: Text('setting')),
          ],
        ),
      ),
    );
  }
}
