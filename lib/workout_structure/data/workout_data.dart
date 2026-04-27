import 'package:flutter/foundation.dart';
import 'package:repmaster/workout_structure/Exercise.dart';
import 'package:repmaster/workout_structure/WorkingSet.dart';
import 'package:repmaster/workout_structure/Workout.dart';
import 'package:repmaster/workout_structure/enums/Category_workout.dart';
import 'package:repmaster/workout_structure/enums/WorkoutLevel.dart';

class WorkoutData {
  static List<Workout> workouts = [
    //PULL WORKOUTS
    Workout(
      name: "Workout 1",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [

        Exercise("Close Pull-Ups")
          ..sets.addAll([7,6,5,4,3,2,1].map((e)=>Workingset(e)).toList()),

        Exercise("Chinups")
          ..sets.addAll([7,6,5,4,3,2,1].map((e)=>Workingset(e)).toList()),

        Exercise("Wide Pull-Ups")
          ..sets.addAll([7,6,5,4,3,2,1].map((e)=>Workingset(e)).toList()),

        Exercise("Commando Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),

        Exercise("Horizontal Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),

        Exercise("Wide Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),

        Exercise("Leg Raises")
          ..sets.addAll(List.generate(4, (_) => Workingset(20))),

        Exercise("Sit-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(15))),

        Exercise("Flutter Kicks")
          ..sets.addAll(List.generate(4, (_) => Workingset(45))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Close Pull-Ups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Chinups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Wide Pull-Ups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(4))),
        Exercise("Leg Raises")
          ..sets.addAll(List.generate(4, (_) => Workingset(15))),
        Exercise("Sit-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(12))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(3))),
        Exercise("Assisted Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(3))),
        Exercise("Assisted Rows")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Leg Raises")
          ..sets.addAll(List.generate(3, (_) => Workingset(10))),
        Exercise("Sit-Ups")
          ..sets.addAll(List.generate(3, (_) => Workingset(10))),
      ],
    ),

    // ================= WORKOUT 2 =================

    Workout(
      name: "Workout 2",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pull-Ups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Chinups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Wide Pull-Ups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll([10,8,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pull-Ups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Chinups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll([5,4,3,2,1].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(2))),
        Exercise("Assisted Rows")
          ..sets.addAll(List.generate(4, (_) => Workingset(4))),
        Exercise("Dead Hang")
          ..sets.addAll(List.generate(3, (_) => Workingset(10))),
      ],
    ),

    // ================= WORKOUT 3 =================

    Workout(
      name: "Workout 3",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Wide Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Close Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Wide Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(3))),
        Exercise("Assisted Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(3))),
      ],
    ),

    // ================= WORKOUT 4 =================

    Workout(
      name: "Workout 4",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Deadlifts")
          ..sets.addAll(List.generate(5, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 4",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Deadlifts")
          ..sets.addAll(List.generate(5, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 4",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Rows")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Dead Hang")
          ..sets.addAll(List.generate(3, (_) => Workingset(10))),
      ],
    ),

    // ================= WORKOUT 5 =================

    Workout(
      name: "Workout 5",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pyramid Pull-Ups")
          ..sets.addAll([1,2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3,2,1]
              .map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 5",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pyramid Pull-Ups")
          ..sets.addAll([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]
              .map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 5",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups Pyramid")
          ..sets.addAll([1,2,3,4,3,2,1]
              .map((e)=>Workingset(e)).toList()),
      ],
    ),

    // ================= WORKOUT 6 =================

    Workout(
      name: "Workout 6",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Weighted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Weighted Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(7))),
        Exercise("Weighted Wide Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(7))),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(9))),
      ],
    ),

    Workout(
      name: "Workout 6",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pull-Ups")
          ..sets.addAll(List.generate(2, (_) => Workingset(5))),
        Exercise("Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(4))),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(8))),
      ],
    ),

    Workout(
      name: "Workout 6",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(3))),
      ],
    ),

    // ================= WORKOUT 7 =================

    Workout(
      name: "Workout 7",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Wide Pull-Ups")
          ..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 7",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Wide Pull-Ups")
          ..sets.addAll([2,4,6,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Horizontal Pull-Ups")
          ..sets.addAll([2,4,6,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll([2,4,6,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 7",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(2))),
      ],
    ),

    // ================= WORKOUT 8 =================

    Workout(
      name: "Workout 8",
      level: Workoutlevel.advanced,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pull-Up Pyramid Hold")
          ..sets.addAll([1,2,3,4,5,4,3,2,1,2,3,4,5]
              .map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Close Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Chinups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
        Exercise("Aussie Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 8",
      level: Workoutlevel.intermediate,
      category: Category_workout.pull,
      exercises: [
        Exercise("Pull-Up Pyramid")
          ..sets.addAll([1,2,3,4,3,2,1].map((e)=>Workingset(e)).toList()),
        Exercise("Commando Pull-Ups")
          ..sets.addAll(List.generate(4, (_) => Workingset(5))),
      ],
    ),

    Workout(
      name: "Workout 8",
      level: Workoutlevel.beginner,
      category: Category_workout.pull,
      exercises: [
        Exercise("Assisted Pull-Ups")
          ..sets.addAll(List.generate(3, (_) => Workingset(2))),
        Exercise("Dead Hang")
          ..sets.addAll(List.generate(3, (_) => Workingset(10))),
      ],
    ),


    // ================= WORKOUT 1 =================
    Workout(
      name: "Workout 1",
      level: Workoutlevel.advanced,
      category: Category_workout.push,
      exercises: [
        Exercise("Dips")..sets.addAll(List.generate(5, (_) => Workingset(18))),
        Exercise("Push Ups")..sets.addAll(List.generate(5, (_) => Workingset(18))),
        Exercise("Diamond Pushups")..sets.addAll(List.generate(5, (_) => Workingset(18))),
        Exercise("Clapping Pushups")..sets.addAll(List.generate(5, (_) => Workingset(8))),
        Exercise("Triceps Extensions")..sets.addAll(List.generate(5, (_) => Workingset(8))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.intermediate,
      category: Category_workout.push,
      exercises: [
        Exercise("Dips")..sets.addAll(List.generate(5, (_) => Workingset(10))),
        Exercise("Push Ups")..sets.addAll(List.generate(5, (_) => Workingset(11))),
        Exercise("Diamond Pushups")..sets.addAll(List.generate(5, (_) => Workingset(9))),
        Exercise("Clapping Pushups")..sets.addAll(List.generate(5, (_) => Workingset(4))),
        Exercise("Triceps Extensions")..sets.addAll(List.generate(5, (_) => Workingset(6))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.beginner,
      category: Category_workout.push,
      exercises: [
        Exercise("Bench Dips")..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Knee Push Ups")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Incline Push Ups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    // ================= WORKOUT 2 =================
    Workout(
      name: "Workout 2",
      level: Workoutlevel.advanced,
      category: Category_workout.push,
      exercises: [
        Exercise("Wall Handstand Pushups")..sets.addAll(List.generate(4, (_) => Workingset(7))),
        Exercise("Dips")..sets.addAll([2,4,6,8,10].map((e)=>Workingset(e)).toList()),
        Exercise("Weighted Pushups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Clapping Pushups")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Backward Pushups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Bench Dips")..sets.addAll(List.generate(4, (_) => Workingset(20))),
        Exercise("Skull Crushers")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Narrow Pushups")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.intermediate,
      category: Category_workout.push,
      exercises: [
        Exercise("Wall Handstand Pushups")..sets.addAll(List.generate(5, (_) => Workingset(3))),
        Exercise("Dips")..sets.addAll([2,4,6,8,10].map((e)=>Workingset(e)).toList()),
        Exercise("Push Ups")..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Clapping Pushups")..sets.addAll(List.generate(4, (_) => Workingset(7))),
        Exercise("Backward Pushups")..sets.addAll(List.generate(4, (_) => Workingset(7))),
        Exercise("Bench Dips")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.beginner,
      category: Category_workout.push,
      exercises: [
        Exercise("Wall Hold")..sets.addAll(List.generate(4, (_) => Workingset(1))),
        Exercise("Bench Dips")..sets.addAll(List.generate(4, (_) => Workingset(6))),
        Exercise("Incline Push Ups")..sets.addAll(List.generate(4, (_) => Workingset(8))),
      ],
    ),

    // ================= WORKOUT 3 =================
    Workout(
      name: "Workout 3",
      level: Workoutlevel.advanced,
      category: Category_workout.push,
      exercises: [
        Exercise("Wall Handstand Pushups")..sets.addAll(List.generate(10, (_) => Workingset(7))),
        Exercise("Push Ups")..sets.addAll(List.generate(10, (_) => Workingset(13))),
        Exercise("Decline Pushups")..sets.addAll(List.generate(10, (_) => Workingset(11))),
        Exercise("Dips")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Forward Pushups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.intermediate,
      category: Category_workout.push,
      exercises: [
        Exercise("Wall Handstand Pushups")..sets.addAll(List.generate(5, (_) => Workingset(3))),
        Exercise("Backward Pushups")..sets.addAll(List.generate(10, (_) => Workingset(10))),
        Exercise("Decline Pushups")..sets.addAll(List.generate(10, (_) => Workingset(10))),
        Exercise("Forward Pushups")..sets.addAll(List.generate(5, (_) => Workingset(8))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.beginner,
      category: Category_workout.push,
      exercises: [
        Exercise("Incline Push Ups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
        Exercise("Knee Push Ups")..sets.addAll(List.generate(6, (_) => Workingset(10))),
      ],
    ),
    // WORKOUT 5
    Workout(
      name: "Workout 5",
      level: Workoutlevel.advanced,
      category: Category_workout.push,
      exercises: [

        // ===== ADVANCED =====

        Exercise("Weighted Dips / Ring Dips")..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10)),

        Exercise("Bodyweight Dips")..sets.add(Workingset(16))
          ..sets.add(Workingset(16))
          ..sets.add(Workingset(16))
          ..sets.add(Workingset(16)),

        Exercise("Declined Pushups")..sets.add(Workingset(15))
          ..sets.add(Workingset(15))
          ..sets.add(Workingset(15))
          ..sets.add(Workingset(15)),

        Exercise("Incline Pushups")..sets.add(Workingset(18))
          ..sets.add(Workingset(18))
          ..sets.add(Workingset(18))
          ..sets.add(Workingset(18)),

        Exercise("Plank-to-Pushups")..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10)),
      ],
    ),
    Workout(
      name: "Workout 5",
      level: Workoutlevel.intermediate,
      category: Category_workout.push,
      exercises: [

        Exercise("Weighted Dips / Ring Dips")..sets.add(Workingset(5))
          ..sets.add(Workingset(5))
          ..sets.add(Workingset(5))
          ..sets.add(Workingset(5)),

        Exercise("Bodyweight Dips")..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10)),

        Exercise("Declined Pushups")..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10)),

        Exercise("Incline Pushups")..sets.add(Workingset(12))
          ..sets.add(Workingset(12))
          ..sets.add(Workingset(12))
          ..sets.add(Workingset(12)),

        Exercise("Plank-to-Pushups")..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8)),
      ],
    ),
    Workout(
      name: "Workout 5 ",
      level: Workoutlevel.beginner,
      category: Category_workout.push,
      exercises: [

        // ===== BEGINNER =====

        Exercise("Light Weighted Dips")..sets.add(Workingset(3))
          ..sets.add(Workingset(3))
          ..sets.add(Workingset(3))
          ..sets.add(Workingset(3)),

        Exercise("Bodyweight Dips")..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8)),

        Exercise("Declined Pushups ")..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8))
          ..sets.add(Workingset(8)),

        Exercise("Incline Pushups ")..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10))
          ..sets.add(Workingset(10)),

        Exercise("Plank-to-Pushups ")..sets.add(Workingset(6))
          ..sets.add(Workingset(6))
          ..sets.add(Workingset(6))
          ..sets.add(Workingset(6))
          ..sets.add(Workingset(6)),
      ],
    ),

    // ================= WORKOUT 6 (Pyramid) =================
    Workout(
      name: "Workout 6",
      level: Workoutlevel.advanced,
      category: Category_workout.push,
      exercises: [
        Exercise("Pushups")..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Decline Pushups")..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 6",
      level: Workoutlevel.intermediate,
      category: Category_workout.push,
      exercises: [
        Exercise("Pushups")..sets.addAll([2,4,6,8,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Decline Pushups")..sets.addAll([2,4,6,8,8,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Workout 6",
      level: Workoutlevel.beginner,
      category: Category_workout.push,
      exercises: [
        Exercise("Incline Pushups")..sets.addAll([2,4,6,6,4,2].map((e)=>Workingset(e)).toList()),
      ],
    ),

    //PUSH AND PULL
    Workout(
      name: "Workout 1",
      level: Workoutlevel.advanced,
      category: Category_workout.pushPull,
      exercises: [

        ...List.generate(9, (i) {
          final reps = [2,4,6,8,10,8,6,4,2][i];
          return [
            Exercise("Pull-Ups")..sets.add(Workingset(reps)),
            Exercise("Wide Pull-Ups")..sets.add(Workingset(reps)),
            Exercise("Chinups")..sets.add(Workingset(reps)),
            Exercise("Close Pull-Ups")..sets.add(Workingset(reps)),
          ];
        }).expand((e) => e),

        Exercise("Pushups")..sets.addAll(List.generate(9, (_) => Workingset(50))),
        Exercise("Diamond Pushups")..sets.addAll(List.generate(9, (_) => Workingset(50))),
        Exercise("Incline Pushups")..sets.addAll(List.generate(9, (_) => Workingset(50))),
        Exercise("Incline Narrow Pushups")..sets.addAll(List.generate(9, (_) => Workingset(50))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.intermediate,
      category: Category_workout.pushPull,
      exercises: [

        ...List.generate(7, (i) {
          final reps = [2,4,6,8,6,4,2][i];
          return [
            Exercise("Pull-Ups")..sets.add(Workingset(reps)),
            Exercise("Wide Pull-Ups")..sets.add(Workingset(reps)),
            Exercise("Chinups")..sets.add(Workingset(reps)),
            Exercise("Close Pull-Ups")..sets.add(Workingset(reps)),
          ];
        }).expand((e) => e),

        Exercise("Pushups")..sets.addAll(List.generate(7, (_) => Workingset(25))),
        Exercise("Diamond Pushups")..sets.addAll(List.generate(7, (_) => Workingset(25))),
        Exercise("Incline Pushups")..sets.addAll(List.generate(7, (_) => Workingset(25))),
        Exercise("Incline Narrow Pushups")..sets.addAll(List.generate(7, (_) => Workingset(25))),
      ],
    ),

    Workout(
      name: "Workout 1",
      level: Workoutlevel.beginner,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Incline Pull-Ups")..sets.addAll(List.generate(6, (_) => Workingset(3))),
        Exercise("Assisted Chinups")..sets.addAll(List.generate(6, (_) => Workingset(3))),
        Exercise("Knee Pushups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
        Exercise("Incline Pushups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
      ],
    ),

    // ================= WORKOUT 2 =================
    Workout(
      name: "Workout 2",
      level: Workoutlevel.advanced,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Dips")..sets.addAll([2,4,6,8,10,8,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Pull-Ups")..sets.addAll(List.generate(9, (_) => Workingset(15))),
        Exercise("Close Chinups")..sets.addAll(List.generate(9, (_) => Workingset(15))),
        Exercise("Pushups")..sets.addAll(List.generate(5, (_) => Workingset(75))),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.intermediate,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Dips")..sets.addAll([2,4,6,6,4,2].map((e)=>Workingset(e)).toList()),
        Exercise("Pull-Ups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
        Exercise("Close Chinups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
        Exercise("Pushups")..sets.addAll(List.generate(5, (_) => Workingset(20))),
      ],
    ),

    Workout(
      name: "Workout 2",
      level: Workoutlevel.beginner,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Assisted Dips")..sets.addAll(List.generate(6, (_) => Workingset(5))),
        Exercise("Incline Pull-Ups")..sets.addAll(List.generate(6, (_) => Workingset(3))),
        Exercise("Knee Pushups")..sets.addAll(List.generate(6, (_) => Workingset(8))),
      ],
    ),

    // ================= WORKOUT 3 =================
    Workout(
      name: "Workout 3",
      level: Workoutlevel.advanced,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Chinups")..sets.addAll(List.generate(10, (_) => Workingset(9))),
        Exercise("Pull-Ups")..sets.addAll(List.generate(10, (_) => Workingset(9))),
        Exercise("Dips")..sets.addAll(List.generate(10, (_) => Workingset(13))),
        Exercise("Pushups")..sets.addAll(List.generate(10, (_) => Workingset(15))),
        Exercise("Leg Raises")..sets.addAll(List.generate(10, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.intermediate,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Chinups")..sets.addAll(List.generate(8, (_) => Workingset(5))),
        Exercise("Pull-Ups")..sets.addAll(List.generate(8, (_) => Workingset(5))),
        Exercise("Dips")..sets.addAll(List.generate(8, (_) => Workingset(8))),
        Exercise("Pushups")..sets.addAll(List.generate(8, (_) => Workingset(10))),
        Exercise("Leg Raises")..sets.addAll(List.generate(8, (_) => Workingset(8))),
      ],
    ),

    Workout(
      name: "Workout 3",
      level: Workoutlevel.beginner,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Incline Pull-Ups")..sets.addAll(List.generate(6, (_) => Workingset(3))),
        Exercise("Knee Pushups")..sets.addAll(List.generate(6, (_) => Workingset(6))),
        Exercise("Assisted Dips")..sets.addAll(List.generate(6, (_) => Workingset(4))),
      ],
    ),

    // ================= WORKOUT 4 =================
    Workout(
      name: "Workout 4",
      level: Workoutlevel.advanced,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Pushups")..sets.addAll(List.generate(4, (_) => Workingset(55))),
        Exercise("Pull-Ups")..sets.addAll(List.generate(4, (_) => Workingset(18))),
        Exercise("Decline Pushups")..sets.addAll(List.generate(4, (_) => Workingset(20))),
        Exercise("Chinups")..sets.addAll(List.generate(4, (_) => Workingset(18))),
      ],
    ),

    Workout(
      name: "Workout 4",
      level: Workoutlevel.intermediate,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Pushups")..sets.addAll(List.generate(4, (_) => Workingset(30))),
        Exercise("Pull-Ups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Decline Pushups")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Chinups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Workout 4",
      level: Workoutlevel.beginner,
      category: Category_workout.pushPull,
      exercises: [
        Exercise("Incline Pushups")..sets.addAll(List.generate(5, (_) => Workingset(10))),
        Exercise("Incline Pull-Ups")..sets.addAll(List.generate(5, (_) => Workingset(3))),
      ],
    ),


    //LEGS
    // ================= WORKOUT 1 =================
    Workout(
      name: "Legs Workout 1",
      level: Workoutlevel.advanced,
      category: Category_workout.legs,
      exercises: [
        Exercise("Pistol Squats")..sets.addAll(List.generate(8, (_) => Workingset(8))),
        Exercise("Bulgarian Split Squats")..sets.addAll(List.generate(8, (_) => Workingset(18))),
        Exercise("Jump Squats")..sets.addAll(List.generate(4, (_) => Workingset(25))),
        Exercise("Squats")..sets.addAll(List.generate(4, (_) => Workingset(45))),
        Exercise("Slow One-Leg Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(20))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(25))),
      ],
    ),

    Workout(
      name: "Legs Workout 1",
      level: Workoutlevel.intermediate,
      category: Category_workout.legs,
      exercises: [
        Exercise("Assisted Pistol Squats")..sets.addAll(List.generate(8, (_) => Workingset(6))),
        Exercise("Bulgarian Split Squats")..sets.addAll(List.generate(8, (_) => Workingset(11))),
        Exercise("Jump Squats")..sets.addAll(List.generate(4, (_) => Workingset(18))),
        Exercise("Squats")..sets.addAll(List.generate(4, (_) => Workingset(25))),
        Exercise("One-Leg Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(20))),
      ],
    ),

    Workout(
      name: "Legs Workout 1",
      level: Workoutlevel.beginner,
      category: Category_workout.legs,
      exercises: [
        Exercise("Assisted Squats")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Bodyweight Squats")..sets.addAll(List.generate(4, (_) => Workingset(20))),
        Exercise("Light Jump Squats")..sets.addAll(List.generate(3, (_) => Workingset(10))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),

    // ================= WORKOUT 2 =================
    Workout(
      name: "Legs Workout 2",
      level: Workoutlevel.advanced,
      category: Category_workout.legs,
      exercises: [
        Exercise("Walking Lunges")..sets.addAll(List.generate(5, (_) => Workingset(50))),
        Exercise("Jump Squats")..sets.addAll(List.generate(5, (_) => Workingset(30))),
        Exercise("Squats")..sets.addAll(List.generate(5, (_) => Workingset(40))),
        Exercise("Calf Raises")..sets.addAll(List.generate(5, (_) => Workingset(80))),
      ],
    ),

    Workout(
      name: "Legs Workout 2",
      level: Workoutlevel.intermediate,
      category: Category_workout.legs,
      exercises: [
        Exercise("Walking Lunges")..sets.addAll(List.generate(3, (_) => Workingset(30))),
        Exercise("Jump Squats")..sets.addAll(List.generate(3, (_) => Workingset(20))),
        Exercise("Squats")..sets.addAll(List.generate(3, (_) => Workingset(20))),
        Exercise("Calf Raises")..sets.addAll(List.generate(5, (_) => Workingset(60))),
      ],
    ),

    Workout(
      name: "Legs Workout 2",
      level: Workoutlevel.beginner,
      category: Category_workout.legs,
      exercises: [
        Exercise("Assisted Lunges")..sets.addAll(List.generate(3, (_) => Workingset(15))),
        Exercise("Bodyweight Squats")..sets.addAll(List.generate(3, (_) => Workingset(15))),
        Exercise("Calf Raises")..sets.addAll(List.generate(3, (_) => Workingset(25))),
      ],
    ),

    // ================= WORKOUT 3 =================
    Workout(
      name: "Legs Workout 3",
      level: Workoutlevel.advanced,
      category: Category_workout.legs,
      exercises: [
        Exercise("Burpees")..sets.addAll(List.generate(8, (_) => Workingset(15))),
        Exercise("Jumping Lunges")..sets.addAll(List.generate(8, (_) => Workingset(20))),
        Exercise("Squats")..sets.addAll(List.generate(8, (_) => Workingset(30))),
        Exercise("Calf Raises")..sets.addAll(List.generate(8, (_) => Workingset(40))),
      ],
    ),

    Workout(
      name: "Legs Workout 3",
      level: Workoutlevel.intermediate,
      category: Category_workout.legs,
      exercises: [
        Exercise("Burpees")..sets.addAll(List.generate(6, (_) => Workingset(10))),
        Exercise("Jumping Lunges")..sets.addAll(List.generate(6, (_) => Workingset(12))),
        Exercise("Squats")..sets.addAll(List.generate(6, (_) => Workingset(20))),
        Exercise("Calf Raises")..sets.addAll(List.generate(6, (_) => Workingset(30))),
      ],
    ),

    Workout(
      name: "Legs Workout 3",
      level: Workoutlevel.beginner,
      category: Category_workout.legs,
      exercises: [
        Exercise("Bodyweight Squats")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Assisted Lunges")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),

    // ================= WORKOUT 4 =================
    Workout(
      name: "Legs Workout 4",
      level: Workoutlevel.advanced,
      category: Category_workout.legs,
      exercises: [
        Exercise("Squats")..sets.addAll(List.generate(5, (_) => Workingset(50))),
        Exercise("Walking Lunges")..sets.addAll(List.generate(5, (_) => Workingset(60))),
        Exercise("Short Bridges")..sets.addAll(List.generate(4, (_) => Workingset(50))),
        Exercise("Calf Raises")..sets.addAll(List.generate(5, (_) => Workingset(80))),
      ],
    ),

    Workout(
      name: "Legs Workout 4",
      level: Workoutlevel.intermediate,
      category: Category_workout.legs,
      exercises: [
        Exercise("Squats")..sets.addAll(List.generate(4, (_) => Workingset(30))),
        Exercise("Walking Lunges")..sets.addAll(List.generate(4, (_) => Workingset(40))),
        Exercise("Short Bridges")..sets.addAll(List.generate(4, (_) => Workingset(25))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(50))),
      ],
    ),

    Workout(
      name: "Legs Workout 4",
      level: Workoutlevel.beginner,
      category: Category_workout.legs,
      exercises: [
        Exercise("Bodyweight Squats")..sets.addAll(List.generate(4, (_) => Workingset(15))),
        Exercise("Assisted Lunges")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Calf Raises")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),
    //ABS
    Workout(
      name: "Abs Workout 1",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Toes to Bar")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Windshield Wipers")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(9))),
        Exercise("Knee Raises")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Sit Ups")..sets.add(Workingset(50)),
      ],
    ),

    Workout(
      name: "Abs Workout 1",
      level: Workoutlevel.intermediate,
      category: Category_workout.abs,
      exercises: [
        Exercise("Leg Raises")..sets.addAll(List.generate(10, (_) => Workingset(10))),
        Exercise("Knee Raises")..sets.addAll(List.generate(4, (_) => Workingset(12))),
        Exercise("Sit Ups")..sets.add(Workingset(50)),
      ],
    ),

    Workout(
      name: "Abs Workout 1",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Knee Raises")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Sit Ups")..sets.add(Workingset(25)),
      ],
    ),

    // ================= WORKOUT 2 =================
    Workout(
      name: "Abs Workout 2",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("V Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(40))),
        Exercise("Knee to Chest")..sets.addAll(List.generate(4, (_) => Workingset(20))),
      ],
    ),

    Workout(
      name: "Abs Workout 2",
      level: Workoutlevel.intermediate,
      category: Category_workout.abs,
      exercises: [
        Exercise("V Raises")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(8))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(30))),
        Exercise("Knee to Chest")..sets.addAll(List.generate(4, (_) => Workingset(15))),
      ],
    ),

    Workout(
      name: "Abs Workout 2",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(15))),
        Exercise("Knee to Chest")..sets.addAll(List.generate(4, (_) => Workingset(12))),
      ],
    ),

    // ================= WORKOUT 3 =================
    Workout(
      name: "Abs Workout 3",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Sit Ups")..sets.addAll(List.generate(5, (_) => Workingset(20))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(5, (_) => Workingset(20))),
        Exercise("Flutter Kicks (sec)")..sets.addAll(List.generate(5, (_) => Workingset(60))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(5, (_) => Workingset(60))),
      ],
    ),

    Workout(
      name: "Abs Workout 3",
      level: Workoutlevel.intermediate,
      category: Category_workout.abs,
      exercises: [
        Exercise("Sit Ups")..sets.addAll(List.generate(5, (_) => Workingset(15))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(5, (_) => Workingset(15))),
        Exercise("Flutter Kicks (sec)")..sets.addAll(List.generate(5, (_) => Workingset(45))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(5, (_) => Workingset(45))),
      ],
    ),

    Workout(
      name: "Abs Workout 3",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Sit Ups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Knee Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(4, (_) => Workingset(30))),
      ],
    ),

    // ================= WORKOUT 4 =================
    Workout(
      name: "Abs Workout 4",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Leg Raises")..sets.addAll(List.generate(10, (_) => Workingset(10))),
        Exercise("Knee to Chest")..sets.addAll(List.generate(10, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Abs Workout 4",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Knee Raises")..sets.addAll(List.generate(6, (_) => Workingset(8))),
        Exercise("Floor Knee to Chest")..sets.addAll(List.generate(6, (_) => Workingset(8))),
      ],
    ),

    // ================= WORKOUT 5 =================
    Workout(
      name: "Abs Workout 5",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Leg Raises")..sets.addAll([50,40,30,20,10].map((e)=>Workingset(e)).toList()),
        Exercise("Knee to Chest")..sets.addAll([50,40,30,20,10].map((e)=>Workingset(e)).toList()),
      ],
    ),

    Workout(
      name: "Abs Workout 5",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Leg Raises")..sets.addAll([20,15,10].map((e)=>Workingset(e)).toList()),
        Exercise("Knee to Chest")..sets.addAll([20,15,10].map((e)=>Workingset(e)).toList()),
      ],
    ),

    // ================= WORKOUT 6 =================
    Workout(
      name: "Abs Workout 6",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Plank to Pushups")..sets.addAll(List.generate(5, (_) => Workingset(10))),
        Exercise("Pushup Hold (sec)")..sets.addAll(List.generate(5, (_) => Workingset(30))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(5, (_) => Workingset(30))),
        Exercise("Sit Ups")..sets.addAll(List.generate(4, (_) => Workingset(18))),
        Exercise("Side Plank (sec)")..sets.addAll(List.generate(4, (_) => Workingset(90))),
      ],
    ),

    Workout(
      name: "Abs Workout 6",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Plank (sec)")..sets.addAll(List.generate(4, (_) => Workingset(30))),
        Exercise("Sit Ups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
      ],
    ),

    // ================= WORKOUT 7 =================
    Workout(
      name: "Abs Workout 7",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Mountain Climbers (sec)")..sets.addAll(List.generate(8, (_) => Workingset(30))),
        Exercise("Sit Ups")..sets.addAll(List.generate(4, (_) => Workingset(15))),
        Exercise("Flutter Kicks (sec)")..sets.addAll(List.generate(4, (_) => Workingset(60))),
        Exercise("Leg Raises")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(4, (_) => Workingset(60))),
      ],
    ),

    Workout(
      name: "Abs Workout 7",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Mountain Climbers (sec)")..sets.addAll(List.generate(4, (_) => Workingset(20))),
        Exercise("Sit Ups")..sets.addAll(List.generate(4, (_) => Workingset(10))),
        Exercise("Plank (sec)")..sets.addAll(List.generate(4, (_) => Workingset(30))),
      ],
    ),

    // ================= WORKOUT 8 =================
    Workout(
      name: "Abs Workout 8",
      level: Workoutlevel.advanced,
      category: Category_workout.abs,
      exercises: [
        Exercise("Floor Knee Raises")..sets.addAll(List.generate(3, (_) => Workingset(40))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(3, (_) => Workingset(40))),
        Exercise("Knee Raises")..sets.addAll(List.generate(3, (_) => Workingset(30))),
        Exercise("Leg Raises")..sets.addAll(List.generate(3, (_) => Workingset(20))),
        Exercise("V Raises")..sets.addAll(List.generate(3, (_) => Workingset(10))),
      ],
    ),

    Workout(
      name: "Abs Workout 8",
      level: Workoutlevel.beginner,
      category: Category_workout.abs,
      exercises: [
        Exercise("Floor Knee Raises")..sets.addAll(List.generate(2, (_) => Workingset(20))),
        Exercise("Floor Leg Raises")..sets.addAll(List.generate(2, (_) => Workingset(20))),
        Exercise("Sit Ups")..sets.addAll(List.generate(2, (_) => Workingset(10))),
      ],
    ),
  ];
}