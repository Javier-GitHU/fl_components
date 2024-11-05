import 'package:fl_components/srceens/listview1_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Quitar el debug
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview1Screen()
    );
  }
}