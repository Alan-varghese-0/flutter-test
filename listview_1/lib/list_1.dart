import 'package:flutter/material.dart';
import 'package:listview_1/list_2.dart';

// ignore: must_be_immutable
class List1 extends StatelessWidget {
  List1({super.key});
  List name = ['apple', 'orange', 'benana', 'grape'];
  List pics = [
    'https://www.collinsdictionary.com/images/full/apple_158989157.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZbB_doR9LVg_xVbDXOOZc3TNbgNCEIzLLKw&s',
    'https://png.pngtree.com/png-vector/20250522/ourlarge/pngtree-a-single-ripe-yellow-banana-png-image_16357496.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqSkMoCfy5F8UbbVm3dEoAbwQuAr2GSimrdg&s',
  ];
  List<Model> modelList = [
    Model(
      fruits: 'Banana',
      image: 'assets/benana.jpg',
      discriptions:
          'Bananas are a popular tropical fruit known for their soft, sweet flesh and high potassium content. Great as a snack or in smoothies.',
    ),
    Model(
      fruits: 'Fig',
      image: 'assets/fig.jpg',
      discriptions:
          'Figs are sweet and chewy fruits with a unique texture. They are rich in fiber, antioxidants, and have a subtle honey-like flavor.',
    ),
    Model(
      fruits: 'Grape',
      image: 'assets/grape.jpg',
      discriptions:
          'Grapes are juicy berries often eaten fresh or used for wine and juice. They come in red, green, and purple varieties.',
    ),
    Model(
      fruits: 'Mango',
      image: 'assets/mango.jpg',
      discriptions:
          'Mangoes are tropical stone fruits, loved for their sweet and juicy golden flesh. Rich in vitamins A and C.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list view')),
      body: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => List2(
                    name: modelList[index].fruits,
                    image: modelList[index].image,
                    discriptions: modelList[index].discriptions,
                  ),
                ),
              );
            },
            title: Text(modelList[index].fruits),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(modelList[index].image),
            ),
          );
        },
      ),
    );
  }
}

class Model {
  final String fruits;
  final String image;
  final String discriptions;

  Model({
    required this.fruits,
    required this.image,
    required this.discriptions,
  });
}
