import 'package:flutter/material.dart';
import 'package:grid/page_2.dart';

// ignore: must_be_immutable
class List1 extends StatelessWidget {
  List1({super.key});
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page2(
                    name: modelList[index].fruits,
                    image: modelList[index].image,
                    discriptions: modelList[index].discriptions,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(modelList[index].image),
                ),
              ),
              child: Center(child: Text(modelList[index].fruits)),
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
