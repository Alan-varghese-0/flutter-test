import 'package:flutter/material.dart';

class Expended2 extends StatelessWidget {
  const Expended2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.deepPurple)),
                        Expanded(child: Container(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: Container(color: Colors.amber)),
          ],
        ),
      ),
    );
  }
}
