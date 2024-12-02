import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 200; //La barra baja ace al atributo privado
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          Slider.adaptive(//Se adapta al diseño de otras plataformas
          min: 50,
          max: 400,
          value: _sliderValue,
          onChanged: _sliderEnabled ? (value){
            print(value);
            _sliderValue = value;
            setState(() {
            
            });
          }
          : null
          ),
          Checkbox(
            value: _sliderEnabled, 
            onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() {
                
              });
          }
          ),
        ],
      )
    );
  }
}