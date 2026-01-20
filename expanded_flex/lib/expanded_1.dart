import 'package:flutter/material.dart';

// ignore: camel_case_types
class Expanded_1 extends StatelessWidget {
  const Expanded_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.deepPurple)),
                          Expanded(child: Container(color: Colors.black)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.yellow)),
                          Expanded(child: Container(color: Colors.red)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.black)),
                          Expanded(child: Container(color: Colors.white)),
                          Expanded(child: Container(color: Colors.black)),
                        ],
                      ),
                    ),
                    Expanded(child: Container(color: Colors.grey)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.white)),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(child: Container(color: Colors.red)),
                              Expanded(child: Container(color: Colors.yellow)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.white)),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(child: Container(color: Colors.red)),
                              Expanded(child: Container(color: Colors.yellow)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
