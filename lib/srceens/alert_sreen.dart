import 'package:flutter/material.dart';

class AlertSreen extends StatelessWidget {
   
  const AlertSreen({Key? key}) : super(key: key);
  
  void displayDialog(BuildContext context){
    showDialog(
    context: context,
    builder: ( context ) {
      return const AlertDialog(
        title: Text("Alerta"),
        content:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Este es el contenido del mensaje de alerta"),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,)
          ],
        ),
      
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context), //Si lo pones a null el boton no se podra pulsar
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Mostrar alerta", style: TextStyle(fontSize: 20),),
          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
       
      ),
    );
  }
}