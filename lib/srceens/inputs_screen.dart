import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Text('InputsScreen'),
      ),
    );
  }
}