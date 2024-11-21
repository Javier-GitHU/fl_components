import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen4 extends StatelessWidget {
  final options = const [
    {
      'nombre': 'Zinogre',
      'urlImagen': 'https://wallpapers.com/images/hd/monster-hunter-world-zinogre-agygxj62lbalh6dz.jpg',
      'description': 'El Zinogre es un gran wyvern cuadrúpedo de apariencia canina. Posee un cuerpo musculoso con fuertes patas delanteras y un gran torso, su cabeza es pequeña y posee dos duros cuernos rectos. Sus grandes garras delanteras poseen espolones que en realidad son vestigios alares. Su cola es larga y ancha. El Zinogre posee escamas de azul intenso, conchas y cuernos amarillentos y varios mechones de largo pelaje blanco.'
    },
    {
      'nombre': 'Rathalos',
      'urlImagen': 'https://cdn.staticneo.com/w/monsterhunter/thumb/Rath.JPG/300px-Rath.JPG',
      'description': 'El Zinogre es un gran wyvern cuadrúpedo de apariencia canina. Posee un cuerpo musculoso con fuertes patas delanteras y un gran torso, su cabeza es pequeña y posee dos duros cuernos rectos. Sus grandes garras delanteras poseen espolones que en realidad son vestigios alares. Su cola es larga y ancha. El Zinogre posee escamas de azul intenso, conchas y cuernos amarillentos y varios mechones de largo pelaje blanco.'
    },
    {
      'nombre': 'Zinogre',
      'urlImagen': 'https://wallpapers.com/images/hd/monster-hunter-world-zinogre-agygxj62lbalh6dz.jpg',
      'description': 'El Zinogre es un gran wyvern cuadrúpedo de apariencia canina. Posee un cuerpo musculoso con fuertes patas delanteras y un gran torso, su cabeza es pequeña y posee dos duros cuernos rectos. Sus grandes garras delanteras poseen espolones que en realidad son vestigios alares. Su cola es larga y ancha. El Zinogre posee escamas de azul intenso, conchas y cuernos amarillentos y varios mechones de largo pelaje blanco.'
    },
    {
      'nombre': 'Zinogre',
      'urlImagen': 'https://wallpapers.com/images/hd/monster-hunter-world-zinogre-agygxj62lbalh6dz.jpg',
      'description': 'El Zinogre es un gran wyvern cuadrúpedo de apariencia canina. Posee un cuerpo musculoso con fuertes patas delanteras y un gran torso, su cabeza es pequeña y posee dos duros cuernos rectos. Sus grandes garras delanteras poseen espolones que en realidad son vestigios alares. Su cola es larga y ancha. El Zinogre posee escamas de azul intenso, conchas y cuernos amarillentos y varios mechones de largo pelaje blanco.'
    },
    ];
  const CardScreen4({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personaliced cards'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: options.length,
        itemBuilder: (context, index){
          final monster = options[index];
          return Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => )
                  )
                },
              )
            ],
            )
        }
      ),
    )
  }
}

