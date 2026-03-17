import 'package:flutter/material.dart';
import 'package:repmaster/colors/AppCollors.dart';
import 'package:repmaster/workout_structure/data/workout_data.dart';
import 'package:repmaster/workout_structure/enums/Category_workout.dart';
import 'package:repmaster/workout_structure/enums/WorkoutLevel.dart';

class CategoryWorkoutScreen extends StatelessWidget {

  final Category_workout category;
  final Workoutlevel level;


  const CategoryWorkoutScreen({super.key,required this.category, required this.level});

  @override
  Widget build(BuildContext context) {

    final filteredWorkouts = WorkoutData.workouts
    .where((w) => w.category == category && w.level==level)
    .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("${category.name.toUpperCase()} - ${level.name.toUpperCase()}"),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: filteredWorkouts.length,
        itemBuilder: (context,index)
        {
          final workout = filteredWorkouts[index];
          return Card(
          margin: EdgeInsets.all(12),
          child: ListTile(
            title: Text(workout.name),
            onTap:(){

            }
          )
      );
        }
      )
    );
  }
}
