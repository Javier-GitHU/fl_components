import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen ({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  Random random = Random();
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: (){
          _width = random.nextDouble() * 300 + 55;
          _height = random.nextDouble() * 300 + 55;
          _color = Color.fromARGB(
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255));
          _borderRadius = BorderRadius.circular(random.nextDouble() * 300 + 55);
          setState(() {
            
          });
        }
        ),
    );
  }
}