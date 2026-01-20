import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({
    super.key,
    required this.name,
    required this.image,
    required this.discriptions,
  });
  String name;
  String image;
  String discriptions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(discriptions),
            ],
          ),
        ),
      ),
    );
  }
}
