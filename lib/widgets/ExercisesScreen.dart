import 'package:flutter/material.dart';

import '../colors/AppCollors.dart';

class ExercisesScreen extends StatelessWidget {

  ExercisesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "EXERCISES",
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          ),

        ),
      ),
      body: SafeArea(child:
      Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              const SizedBox(height: 16,),
              Padding(
                      padding:EdgeInsets.symmetric(horizontal: 24),
                      child: Text("Choose exercise to see details",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.textPrimary),),

              ),

                const SizedBox(height: 20,),
                Expanded(
                    child:Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: _buildExercisesGrid(context),
                    ) )

        ],
      )),
    );
  }


  Widget _buildExercisesGrid(BuildContext context)
  {
    final exercises=[
      ExerciseData("Push Ups", "Classic chest exercise"),
      ExerciseData("Pull Ups", "Back strength exercise"),
      ExerciseData("Squats", "Leg power exercise"),
      ExerciseData("Plank", "Core stability"),



    ];
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16

      ),
      itemCount: exercises.length,
      itemBuilder: (context,index)
      {
        final ex=exercises[index];

        return GestureDetector(
          onTap: (){

          },
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.outline),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.fitness_center,
                  color: AppColors.primary,
                  size: 30,
                ),
                const Spacer(),
                Text(
                  ex.name,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6,),
                Text(
                  ex.description,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 12
                  ),
                )

              ],
            ),
          ),
        );
      },
    );
  }


}


class ExerciseData{
  final String name;
  final String description;


  ExerciseData(this.name, this.description);


}