import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                  title:  Text("Titulo de la tarjeta"),
                  subtitle: Text("Irure adipisicing pariatur reprehenderit minim culpa laborum ea occaecat cillum incididunt voluptate ex."),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}