import 'package:firebase_1/update.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  const Output({super.key});

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  String name = '';
  String password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  void getdata() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('user');
    DatabaseEvent event = await ref.once();
    var data = event.snapshot.value as Map;
    setState(() {
      name = data['name'];
      password = data['password'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: TextStyle(color: Colors.black, fontSize: 20)),
            Text(password, style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Update()),
                );
              },
              child: Text('update', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
