import 'package:flutter/material.dart';
//importM
//statelessW
class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://i.pinimg.com/736x/1e/00/45/1e004547ab21e301b49b3dad61283d43.jpg')
            )
        ],
      ),
    );
  }
}