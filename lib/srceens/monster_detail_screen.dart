import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class MonsterDetailScreen extends StatelessWidget{
  final String nombre;
  final String imageURL;
  final String descripcion;

  const MonsterDetailScreen({super.key, required this.imageURL, required this.descripcion, required this.nombre});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombre),
      ),
      body: Center(
        child: MonsterhunterCard(imageURL: imageURL, descripcion: descripcion, nombre: nombre),
      ),
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}