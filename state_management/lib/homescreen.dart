// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/userprovider.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Text('user name : '),
                Text(context.watch<Userprovider>().username),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: userNameController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<Userprovider>().changeusername(
                  newUsername: userNameController.text,
                );
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: Text('save'),
            ),
          ],
        ),
      ),
    );
  }
}
