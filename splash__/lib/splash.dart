
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash__/login.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override

  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen>with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _scaleanimation;
  late Animation<double> _rotateanimation;
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _scaleanimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve:Curves.easeInOut)
    );
     _rotateanimation = Tween<double>(begin: 0.5, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve:Curves.easeInOut)
    );
    _controller.forward();

    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login(),));
    });
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleanimation.value,
              child: Transform.rotate(
                angle: _rotateanimation.value * 3.14, // radians
                child: FlutterLogo(size: 100),
              ),
            );
          },
        ),
      ),
    );
  }
}