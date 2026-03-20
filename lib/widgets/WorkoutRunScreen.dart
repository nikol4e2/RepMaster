import "package:flutter/material.dart";
import "package:repmaster/colors/AppCollors.dart";

import "../workout_structure/Workout.dart";



class WorkoutRunScreen extends StatefulWidget {
  final Workout workout;

  const WorkoutRunScreen({super.key, required this.workout});

  
  @override
  State<WorkoutRunScreen> createState() => _WorkoutRunScreenState();
}

class _WorkoutRunScreenState extends State<WorkoutRunScreen> {

  final TextEditingController _controller = TextEditingController();

  int activeExerciseIndex = 0;
  int activeSetIndex = 0;

  void _nextSet() {
    final exercises = widget.workout.exercises;

    if (activeSetIndex < exercises[activeExerciseIndex].sets.length - 1) {
      activeSetIndex++;
    } else if (activeExerciseIndex < exercises.length - 1) {
      activeExerciseIndex++;
      activeSetIndex = 0;
    }

    _controller.clear();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.workout.name),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: widget.workout.exercises.length,
        itemBuilder: (context, i) {
          final exercise = widget.workout.exercises[i];

          return Card(
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Column(
                    children: List.generate(exercise.sets.length, (j) {
                      final set = exercise.sets[j];

                      final isActive =
                          i == activeExerciseIndex &&
                              j == activeSetIndex;


                      if (isActive) {
                        _controller.text = set.done.toString();
                      }

                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: EdgeInsets.all(isActive ? 16 : 10),
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppColors.primary.withOpacity(0.15)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isActive
                                ? AppColors.primary
                                : Colors.grey.shade300,
                            width: isActive ? 2 : 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [


                            Row(
                              children: [
                                Text("Set ${j + 1}"),

                                const Spacer(),

                                isActive
                                    ? SizedBox(
                                  width: 70,
                                  child: TextField(
                                    controller: _controller,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "${set.goal}",
                                      isDense: true,
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 6),
                                    ),
                                    onChanged: (value) {
                                      final val =
                                          int.tryParse(value) ?? 0;
                                      set.done = val;
                                    },
                                  ),
                                )
                                    : Text("${set.done}/${set.goal}"),
                              ],
                            ),

                            const SizedBox(height: 8),


                            if (isActive)
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                      _nextSet();
                                    });
                                  },
                                  child: const Text("COMPLETE SET"),
                                ),
                              ),


                            if (isActive)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        if (set.done > 0) set.done--;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                         set.done++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}