import 'package:flutter/foundation.dart';
import 'package:repmaster/workout_structure/Exercise.dart';
import 'package:repmaster/workout_structure/enums/Category_workout.dart';
import 'package:repmaster/workout_structure/enums/WorkoutLevel.dart';

class Workout {

    String name;
    Workoutlevel level;
    Category_workout category;
    List<Exercise> exercises;


    Workout ({
      required this.name,
      required this.level,
      required this.category,
      List<Exercise>? exercises,
}): exercises =exercises ?? [];




}