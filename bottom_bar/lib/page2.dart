import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Modelclass> modelList = [
    Modelclass(
      name: 'beru',
      image: 'assets/beru.jpg',
      discription: 'wqadgbwajksbxsz',
    ),
    Modelclass(
      name: 'ashborn',
      image: 'assets/ashborn.jpg',
      discription: 'wqadgbwajksbxsz',
    ),
    Modelclass(
      name: 'igris',
      image: 'assets/igris.jpg',
      discription: 'wqadgbwajksbxsz',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(modelList[index].name),
            leading: CircleAvatar(
              backgroundImage: AssetImage(modelList[index].image),
            ),
            subtitle: Text(modelList[index].discription),
          );
        },
      ),
    );
  }
}

class Modelclass {
  String name;
  String image;
  String discription;
  Modelclass({
    required this.name,
    required this.image,
    required this.discription,
  });
}
