import 'package:flutter/material.dart';
import 'package:snackbar/motion.dart';

void main(List<String> args) {
  runApp(Snackbars());
}
class Snackbars extends StatelessWidget {
  const Snackbars({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          SnackBar snackBar=SnackBar(content: Text("hello "),
          backgroundColor: Colors.amber,
          padding: EdgeInsets.all(8),
          duration: Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.push(context, MaterialPageRoute(builder: (context) => Motion(),));
        }, child: Text("press me")),
      ),
    );
  }
}