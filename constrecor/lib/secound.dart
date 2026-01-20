import 'package:constrecor/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Secound extends StatelessWidget {
  Secound({
    super.key,
    required this.data1,
    required this.selectedvalue,
    required this.selected,
    required this.options
  });
  String? data1;
  final List<String> selectedvalue;
  String? selected;
  String? options;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data1 == null || data1!.isEmpty
                    ? 'No data is received'
                    : 'The data is: $data1',
                style: const TextStyle(fontSize: 18),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: selectedvalue.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(selectedvalue[index]));
                  },
                ),
              ),
              Expanded(
                child: Text(
                  selected == null || selected!.isEmpty
                      ? 'No data is received'
                      : 'The data is: $selected',
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              Expanded(
                child: Text(
                  'selected value : $options',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => First()));
                },
                child: Text("back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
