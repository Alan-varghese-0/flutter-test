import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:snackbar/carousel_slider.dart';

class Motion extends StatefulWidget {
  const Motion({super.key});

  @override
  State<Motion> createState() => _MotionState();
}

class _MotionState extends State<Motion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app2"),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(onPressed: (){
              MotionToast motionToast=MotionToast.success(description: Text("nwmesta"),
              animationDuration: Duration(seconds: 5),
              animationType: AnimationType.slideInFromLeft,
              );
              motionToast.show(context);
            }, child: Text("hello")),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Carousel1(),));
            }, child: Text("next page"))
          ],
        ),
      ),
    );
  }
}