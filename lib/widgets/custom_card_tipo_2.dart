import 'package:flutter/material.dart';
//importM
//statelessW
class CustomCardTipo2 extends StatelessWidget {
  final String imageURL;
  final String? titulo;//Es opcional
  const CustomCardTipo2({super.key, required this.imageURL, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,//Darle esquinas redondeadas
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)//Redondea todo
      ),
      child: Column(
        children: [
           FadeInImage(
            //image: NetworkImage('https://i.pinimg.com/736x/1e/00/45/1e004547ab21e301b49b3dad61283d43.jpg'), 
            image: NetworkImage(imageURL), 
            placeholder: const AssetImage('assets/jar-loading.gif'),//Icono de carga
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,//Va a coger todo el tamaño del widget 
            fadeInDuration: const Duration(milliseconds: 3000),//Configuras el fundido que es el paso de la pantalla de carga a la imagen
            ),
            if( titulo != null)// Si es null quitara el titulo
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              padding: const EdgeInsets.only( top: 10, bottom: 10, right: 20),
              child: 
              Text(titulo ?? 'Desconocido')//Si no se le pasa nada saldra Desconocido
              ) //Ctlr *+ . Y wrap with container
        ],
      ),
    );
  }
}