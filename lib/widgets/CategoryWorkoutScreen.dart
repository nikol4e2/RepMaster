import 'package:flutter/material.dart';
import 'package:repmaster/colors/AppCollors.dart';

class CategoryWorkoutScreen extends StatelessWidget {

  final String category;


  const CategoryWorkoutScreen({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Text(
          "Workouts for $category",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
