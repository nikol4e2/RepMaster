import 'package:flutter/foundation.dart';
import 'package:repmaster/workout_structure/Exercise.dart';
import 'package:repmaster/workout_structure/WorkingSet.dart';
import 'package:repmaster/workout_structure/Workout.dart';
import 'package:repmaster/workout_structure/enums/Category_workout.dart';
import 'package:repmaster/workout_structure/enums/WorkoutLevel.dart';

class WorkoutData {
  
  static List<Workout> workouts=[

  Workout(
  name: "Workout 1",
  level: Workoutlevel.advanced,
  category: Category_workout.pull,
  exercises: [

  Exercise("Pull Ups")
  ..sets.addAll([
  Workingset(2),
  Workingset(4),
  Workingset(6),
  Workingset(8),
  Workingset(10),
  Workingset(8),
  Workingset(6),
  Workingset(4),
  Workingset(2),
  ]),

  Exercise("Push Ups")
  ..sets.add(Workingset(50)),

  ],
  ),
  ];
}