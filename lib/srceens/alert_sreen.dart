import 'package:flutter/material.dart';

class AlertSreen extends StatelessWidget {
   
  const AlertSreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
         child: Text('AlertSreen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
       
      ),
    );
  }
}