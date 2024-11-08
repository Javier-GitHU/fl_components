import 'package:flutter/material.dart';
import 'srceens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //Quitar el debug
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'listview1' : (BuildContext context) => const Listview1Screen(),
        'listview2' : (BuildContext context) => const Listview2Screen(),
        'alert' : (BuildContext context) => const AlertSreen(),
        'card' : (BuildContext context) => const CardScreen(),
        'home' : (BuildContext context) => const HomeScreen(),
      },
    );
  }
}