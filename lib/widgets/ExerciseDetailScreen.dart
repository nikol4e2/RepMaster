import 'package:flutter/material.dart';



class ExerciseDetailScreen extends StatelessWidget{


  final String name;
  final String description;


  ExerciseDetailScreen({super.key, required this.name, required this.description});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            SizedBox(height: 20,)
          ],
        ),
      )
    );
  }
}