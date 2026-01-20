import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  List2({
    super.key,
    required this.name,
    required this.image,
    required this.discriptions,
  });
  String? name;
  String? image;
  String? discriptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('discriptions')),
      body: Column(
        children: [
          Text("data"),
          CircleAvatar(backgroundImage: NetworkImage(image!)),
          Text(name!),
          Text(discriptions!),
        ],
      ),
    );
  }
}
