import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title:  Text("Titulo de la tarjeta"),
            subtitle: Text("Irure adipisicing pariatur reprehenderit minim culpa laborum ea occaecat cillum incididunt voluptate ex."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
              onPressed: () {},
              child: const Text('Cancelar')
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child:  const Text('Aceptar'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}