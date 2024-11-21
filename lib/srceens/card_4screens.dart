import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen4 extends StatelessWidget {
   
  const CardScreen4({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10,),
          CustomCardTipo2(imageURL: 'https://i.pinimg.com/736x/1e/00/45/1e004547ab21e301b49b3dad61283d43.jpg', titulo: 'Zinogre el dios del Trueno',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageURL: 'https://www.dexerto.es/cdn-image/wp-content/uploads/sites/3/2024/01/03/monster-hunter-world-pc-ps4-xbox-one_318487.jpg', titulo: 'Rathalos el angel rojo',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageURL: 'https://www.pcgamesn.com/wp-content/sites/pcgamesn/2022/08/monster-hunter-rise-sunbreak-lucent-nargacuga.jpg', titulo: 'Narcaguga el terror de la noche',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageURL: 'https://pbs.twimg.com/media/FPeHbosWUAAMxUK.jpg', titulo: 'Anjanath el dinosaurio pelado',),
          SizedBox(height: 10,),
          CustomCardTipo2(imageURL: 'https://i.pinimg.com/736x/e7/0c/76/e70c76ce161d6989a1c8f2d98a6a4417.jpg', titulo: 'Nergigante el terror del aire ancestral',),
        ],
      )
    );
  }
}

