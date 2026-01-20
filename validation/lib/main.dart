import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Mainscreen());
  }
}

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? email = '';
  String? pass = '';
  String? number = '';
  void _submitForm() {
    // Check if the form is valid
    if (_formkey.currentState!.validate()) {
      // Save the form data
      _formkey.currentState!.save();

      // You can perform actions with the form
      // data here and extract the details
      print('Name: $email'); // Print the name
      print('Email: $pass'); // Print the email
    }
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("log - in"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your name';
                  }if (value.contains('@gmail.com')) {
                    return null;
                  }else{
                    return ' the email is not valid';
                  }
                },
                onSaved: (Value) {
                  email = Value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your password';
                  }
                  return null;
                },
                onSaved: (Value) {
                  pass = Value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'phone number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your phone number';
                  }
                  if (value.length != 10) {
                    return ' the number is not within the limit';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Phone number must contain only digits';
                  }
                  return null;
                },
                onSaved: (Value) {
                  number = Value;
                },
              ),
              SizedBox(height: 20),
              
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submitForm, child: Text('log in')),
            ],
          ),
        ),
      ),
    );
  }
}
