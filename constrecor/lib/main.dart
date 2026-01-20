import 'package:constrecor/secound.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: First());
  }
}

class First extends StatefulWidget {
  const First({super.key});


  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  String? selectedoption = 'radio 1';
  List<String> selectedvalue = [];
  String? _selected = 'option 1';
  final List<String> _potion = ['option 1' , 'option 2', 'option 3' , 'option 4'];
  TextEditingController textcontroller = TextEditingController();
  void _oncheckedchanged(String value, bool isclicked) {
    setState(() {
      if (isclicked) {
        selectedvalue.add(value);
      } else {
        selectedvalue.remove(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firts screen"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textcontroller,
                decoration: InputDecoration(
                  labelText: 'enter the data',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              CheckboxListTile(
                title: Text('Option 1'),
                value: selectedvalue.contains('Option 1'),
                onChanged: (isChecked) {
                  _oncheckedchanged('Option 1', isChecked!);
                },
              ),
              CheckboxListTile(
                title: Text('Option 2'),
                value: selectedvalue.contains('Option 2'),
                onChanged: (isChecked) {
                  _oncheckedchanged('Option 2', isChecked!);
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Radio(value: 'radio 1', groupValue: selectedoption, onChanged: (value){
                    setState(() {
                      selectedoption=value;
                    });
                  }),
                  const Text("radio 1")
                ],
              ),
              Row(
                children: [
                  Radio(value: 'radio 2', groupValue: selectedoption, onChanged: (value){
                    setState(() {
                      selectedoption=value;
                    });
                  }),
                  const Text("radio 2")
                ],
              ),
              Row(
                children: [
                  Radio(value: 'radio 3', groupValue: selectedoption, onChanged: (value){
                    setState(() {
                      selectedoption=value;
                    });
                  }),
                  const Text("radio 3")
                ],
              ),
              SizedBox(height: 10),
              DropdownButton<String>(value: _selected, onChanged: (String? newvalue){
                setState(() {
                  _selected =newvalue;
                });
              } ,items: _potion.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value));
              }).toList()),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Secound(
                        data1: textcontroller.text,
                        selectedvalue: selectedvalue, selected: selectedoption, options: _selected,
                      ),
                    ),
                  );
                },
                child: Text("lets go"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
