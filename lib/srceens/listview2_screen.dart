import 'package:flutter/material.dart';
//fl plantila home screen
class Listview2Screen extends StatelessWidget {
   
  final options = const['Targaruen', 'Stark', 'Lannister', 'Baratheon'];


  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo2"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(Icons.arrow_forward_ios_outlined),// LEading icono a la izquierda , trailing icono a la derecha
          title: Text(options[index]),
          onTap: (){
            final casa = options[index];
            print(casa);
          },
        ), //index cuenta de las veces que vamos a ir iterando 
      separatorBuilder: (context, index) => const Divider(), //cada vez que itere añadira un divider que es una linea que separa
      itemCount: options.length // Numero de elementos del tamño de la lista en este caso)
    ));
  }
}