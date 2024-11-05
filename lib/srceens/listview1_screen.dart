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
        children: const [
         ListTile(
          leading: Icon(Icons.access_time_sharp),
          title: Text('Hola mundo'),
         ),
           ListTile(
          leading: Icon(Icons.access_time_sharp),
          title: Text('Hola mundo'),
         ),
          ListTile(
          leading: Icon(Icons.access_time_sharp),
          title: Text('Hola mundo'),
         ),
          ListTile(
          leading: Icon(Icons.access_time_sharp),
          title: Text('Hola mundo'),
         ),
          ListTile(
          leading: Icon(Icons.access_time_sharp),
          title: Text('Hola mundo'),
         ),
        ],
      ) 
    );
  }
}