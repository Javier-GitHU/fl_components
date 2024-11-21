import 'package:flutter/material.dart';
class MonsterhunterCard extends StatelessWidget {
  final String imageURL;
  final String descripcion;
  const MonsterhunterCard ({super.key, required this.imageURL, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(imageURL), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 3000),
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              padding: const EdgeInsets.only( top: 10, bottom: 10, right: 20),
              child: 
              Text(descripcion)
              )
        ],
      ),
    );
  }
}