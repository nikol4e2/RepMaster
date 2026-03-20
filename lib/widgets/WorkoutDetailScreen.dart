import "package:flutter/material.dart";
import "package:repmaster/colors/AppCollors.dart";

import "../workout_structure/Workout.dart";
import "WorkoutRunScreen.dart";

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  const WorkoutDetailScreen({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(workout.name),
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        children:[ Expanded(
          child: ListView.builder(
            itemCount: workout.exercises.length,
            itemBuilder: (context,index){
              final exercise = workout.exercises[index];

              return Card(
                color: AppColors.surfaceBright,
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary
                        ),
                      ),

                      const SizedBox(height: 10,),
                      Text("Goal:",style: TextStyle(color: AppColors.primary,fontSize: 18),),
                      const SizedBox(height: 4,),
                      //Listing all the sets for the exercise
                    Wrap(
                      spacing: 8,
                      children: exercise.sets.map((set) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "${set.goal}",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    )

                    ],
                  ),
                ),
              );
            },

          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => WorkoutRunScreen(workout : workout)
                  ));
                },
                child: const Text(
                  "START WORKOUT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
        )
        ],
      ),

    );
  }
}
