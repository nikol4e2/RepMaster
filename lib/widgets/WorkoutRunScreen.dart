import "package:flutter/material.dart";

import "../workout_structure/Workout.dart";

class WorkoutRunScreen extends StatefulWidget {

  final Workout workout;
  const WorkoutRunScreen({super.key, required this.workout});

  @override
  State<WorkoutRunScreen> createState() => _WorkoutRunScreenState();
}

class _WorkoutRunScreenState extends State<WorkoutRunScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
