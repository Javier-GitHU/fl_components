
import 'package:fl_components/srceens/screens.dart';
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
      'description': 'El Rathalos es un wyvern volador conocido por su habilidad en combate aéreo. Es una bestia poderosa y agresiva, su cuerpo está cubierto por escamas rojas y tiene una cola afilada. Es un símbolo de poder en el mundo de Monster Hunter.'
    },
    {
      'nombre': 'Nergigante',
      'urlImagen': 'https://i.pinimg.com/736x/e7/0c/76/e70c76ce161d6989a1c8f2d98a6a4417.jpg',
      'description': 'El Nergigante es un monstruo enorme y extremadamente agresivo, conocido por su capacidad para destruir cualquier cosa a su paso. Su cuerpo está cubierto por espinas y su agresividad es legendaria en el mundo de Monster Hunter.'
    },
    {
      'nombre': 'Narcacuga',
      'urlImagen': 'https://www.pcgamesn.com/wp-content/sites/pcgamesn/2022/08/monster-hunter-rise-sunbreak-lucent-nargacuga.jpg',
      'description': 'El Nargacuga es un wyvern tipo tigre con gran agilidad y velocidad. Su cola es letal y puede derribar a sus enemigos con rapidez. Es muy difícil de atrapar debido a su comportamiento evasivo.'
    },
  ];

  const CardScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalized Cards'),  
      ),
      body: ListView.builder(  
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: options.length, 
        itemBuilder: (context, index) {
          final monster = options[index]; 
          return Column(
            children: [
              GestureDetector(  
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MonsterDetailScreen(
                        imageURL: monster['urlImagen']!,  
                        descripcion: monster['description']!,  
                        nombre: monster['nombre']!, 
                      ),
                    ),
                  );
                },
                child: MonsterhunterCard(  
                  imageURL: monster['urlImagen']!, 
                  descripcion: monster['description']!, 
                  nombre: monster['nombre']!,  
                ),
              ),
              const SizedBox(height: 10),  
            ],
          );
        },
      ),
    );
  }
}