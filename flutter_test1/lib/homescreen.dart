import 'package:flutter/material.dart';
import 'package:flutter_test1/secound.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _contactcontroller = TextEditingController();
  final TextEditingController _addresscontroller = TextEditingController();
  String _gender = "male";
  String? _selecteddrop = '-- select Group--';
  String? _selecteddrop2 = '-- select Group--';
  final List<String> _selectedcheck = [];
  final List<String> _dropdown = [
    '-- select Group--',
    'option 1',
    'option 2',
    'option 3',
  ];
  final List<String> _dropdown2 = [
    '-- select Group--',
    'option 1',
    'option 2',
    'option 3',
  ];
  void _selectedhobbie(String value, bool isclicked) {
    setState(() {
      if (isclicked) {
        _selectedcheck.add(value);
      } else {
        _selectedcheck.remove(value);
      }
    });
  }

  void _message(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), duration: Duration(seconds: 3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sutdent sing-in')),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.lightGreenAccent),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Personal Details',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name : '),
                    Expanded(
                      child: TextFormField(
                        controller: _namecontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'name',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Password : '),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: _passcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('E-mail id : '),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gender : '),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                            value: "male",
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          Text('male'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                            value: 'female',
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                          Text('female'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Contact : '),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _contactcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'contact ',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Educational Qualifications',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text('degree : '),

                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        value: _selecteddrop,
                        items: _dropdown.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            _selecteddrop = newvalue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Engineering : '),

                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        value: _selecteddrop2,
                        items: _dropdown2.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            _selecteddrop2 = newvalue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Hobbies:'),
                    Checkbox(
                      value: _selectedcheck.contains('Reading books'),
                      onChanged: (isclicked) {
                        _selectedhobbie('Reading books', isclicked!);
                      },
                    ),
                    Text('Reading books'),
                    Checkbox(
                      value: _selectedcheck.contains('playing chess'),
                      onChanged: (isclicked) {
                        _selectedhobbie('playing chess', isclicked!);
                      },
                    ),
                    Text('playing chess'),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _addresscontroller,
                  maxLines: 5,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Secound(
                          name: _namecontroller.text,
                          password: _passcontroller.text,
                          email: _emailcontroller.text,
                          contact: _contactcontroller.text,
                          address: _addresscontroller.text,
                          gender: _gender,
                          degree: _selecteddrop,
                          engineering: _selecteddrop2,
                          hobbies: _selectedcheck,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'sibmit',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_circle_right_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
