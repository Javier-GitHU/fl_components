import 'package:fl_components/srceens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,//Sombreado
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.abc_outlined),
          title: const Text('Nombre de la ruta'),
          onTap: (){
            //final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            Navigator.pushNamed(context, 'card');
          }
        ), 
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5
        )
    );
  }
}