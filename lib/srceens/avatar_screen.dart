import 'package:flutter/material.dart';
class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pajatar"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('JC'),
              backgroundColor: Colors.white30,
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 500,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvmezBOoDF_Q1ErNofrmVzF0J3dLlT-8WAyQ&s'), 
        ),
      ),
    );
  }
}