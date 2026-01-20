import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Secound extends StatelessWidget {
  Secound({
    super.key,
    required this.name,
    required this.password,
    required this.email,
    required this.contact,
    required this.address,
    required this.gender,
    required this.degree,
    required this.engineering,
    required this.hobbies,
  });
  String? name;
  String? email;
  String? password;
  String? contact;
  String? address;
  String? gender;
  String? degree;
  String? engineering;
  final List<String> hobbies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('passed data')),
      body: Column(
        children: [
          Text("name : $name"),
          Text(' password : $password'),
          Text(' email : $email'),
          Text('contact : $contact'),
          Text("address : $address"),
          SizedBox(height: 20),
          Text("Gender : $gender"),
          Text("Degre : $degree"),
          Text("Engineering : $engineering"),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(title: Text(hobbies[index]));
              },
              itemCount: hobbies.length,
            ),
          ),
        ],
      ),
    );
  }
}
