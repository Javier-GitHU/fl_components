import 'package:flutter/material.dart';
//fl plantila home screen
class Listview1Screen extends StatelessWidget {
   
  final options = const['Targaruen', 'Stark', 'Lannister', 'Baratheon'];


  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo1"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options.map((e) => 
          ListTile(
          trailing: Icon(Icons.arrow_forward_ios_outlined),// LEading icono a la izquierda , trailing icono a la derecha
          title: Text(e),
         ),
         ).toList()
        ],
      ) 
    );
  }
}