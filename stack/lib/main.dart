import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack_1(),
    );
  }
}
class Stack_1 extends StatelessWidget {
  const Stack_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar 1"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          children: [
             Center(
               child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
             ),
            Positioned(
              top: 150,
              left: 400,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 130,
              left: 450,
              child: Container(
                width: 125,
                height: 125,
                color: Colors.blue,
              ),
            ),

          ],
        ),
      ),
    );
  }
}