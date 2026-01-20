import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/userprovider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hompage')),
      body: Center(child: Text(context.watch<Userprovider>().username)),
    );
  }
}
