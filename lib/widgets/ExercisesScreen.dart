import 'package:flutter/material.dart';
import 'package:repmaster/widgets/ExerciseDetailScreen.dart';

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

    final exercises = [
      ExerciseData(
        "Pull Ups",
        "A powerful upper-body exercise that develops back width and overall pulling strength. "
            "Performed by pulling your body upward until your chin passes the bar, it engages multiple muscle groups.\n\n"
            "Pull-ups are excellent for building a strong V-shaped back and improving grip strength, making them one of the most effective bodyweight exercises.",
        ["Back", "Biceps", "Forearms"],
        [
          "Avoid swinging your body",
          "Pull with your back, not just arms",
          "Use full range of motion",
        ],
      ),

      ExerciseData(
        "Push Ups",
        "A fundamental bodyweight exercise that builds strength in the chest, shoulders, and triceps. "
            "It also engages the core, making it a full upper-body movement.\n\n"
            "Push-ups are great for improving endurance, stability, and overall upper-body control without requiring any equipment.",
        ["Chest", "Shoulders", "Triceps", "Core"],
        [
          "Keep your body straight",
          "Don’t let hips sag",
          "Control the movement",
        ],
      ),

      ExerciseData(
        "Chin Ups",
        "A variation of pull-ups using an underhand grip, which places more emphasis on the biceps. "
            "This makes them slightly easier for beginners while still building strong back muscles.\n\n"
            "Chin-ups are ideal for increasing arm size and improving upper-body pulling strength.",
        ["Back", "Biceps"],
        [
          "Use underhand grip",
          "Keep elbows close to your body",
          "Control both up and down",
        ],
      ),

      ExerciseData(
        "Dips",
        "An advanced bodyweight exercise that targets the triceps and chest through a deep pressing movement. "
            "By lowering and pushing your body between parallel bars, you build serious upper-body strength.\n\n"
            "Dips are excellent for developing pushing power and muscle mass in the upper body.",
        ["Triceps", "Chest", "Shoulders"],
        [
          "Lean forward for chest focus",
          "Lower under control",
          "Avoid locking elbows harshly",
        ],
      ),

      ExerciseData(
        "Leg Raises",
        "A core exercise that focuses on the lower abdominal muscles by lifting your legs while keeping them straight. "
            "It challenges your core stability and control.\n\n"
            "Leg raises are effective for building strong abs and improving hip flexor strength.",
        ["Abs", "Lower core", "Hip flexors"],
        [
          "Keep legs straight",
          "Don’t swing your legs",
          "Control the descent",
        ],
      ),

      ExerciseData(
        "Sit Ups",
        "A classic abdominal exercise where you lift your torso from a lying position. "
            "It strengthens the core and improves abdominal endurance.\n\n"
            "Sit-ups are widely used for building basic core strength and stability.",
        ["Abs", "Core"],
        [
          "Don’t pull your neck",
          "Use your core, not momentum",
          "Control the movement",
        ],
      ),

      ExerciseData(
        "Bench Dips",
        "A beginner-friendly dip variation performed using a bench or chair. "
            "It targets the triceps and allows controlled progression toward full dips.\n\n"
            "Bench dips are great for building arm strength and improving pressing endurance.",
        ["Triceps", "Shoulders"],
        [
          "Keep elbows pointing back",
          "Don’t go too low",
          "Keep movement controlled",
        ],
      ),

      ExerciseData(
        "Wall Handstand Push Ups",
        "An advanced exercise where you perform push-ups while upside down against a wall. "
            "This movement heavily targets the shoulders and requires strong balance and core control.\n\n"
            "It is one of the best bodyweight exercises for building shoulder strength and stability.",
        ["Shoulders", "Triceps", "Core"],
        [
          "Keep body tight",
          "Lower slowly",
          "Use wall for balance",
        ],
      ),

      ExerciseData(
        "Knee Raises",
        "A core-focused exercise where you lift your knees toward your chest while hanging or supported. "
            "It emphasizes the lower abs and is easier than leg raises.\n\n"
            "Knee raises are great for beginners building core strength and control.",
        ["Abs", "Lower core"],
        [
          "Raise knees slowly",
          "Avoid swinging",
          "Engage your core fully",
        ],
      ),

      ExerciseData(
        "Pistol Squats",
        "A single-leg squat that requires strength, balance, and mobility. "
            "It challenges each leg individually, improving coordination and control.\n\n"
            "Pistol squats are excellent for building powerful legs and correcting imbalances.",
        ["Quadriceps", "Glutes", "Core"],
        [
          "Keep balance steady",
          "Lower slowly",
          "Use support if needed",
        ],
      ),

      ExerciseData(
        "Calf Raises",
        "An isolation exercise that targets the calf muscles by raising your heels off the ground. "
            "It can be done anywhere and is essential for lower-leg strength.\n\n"
            "Calf raises improve ankle stability and overall leg endurance.",
        ["Calves"],
        [
          "Pause at the top",
          "Control the movement",
          "Use full range of motion",
        ],
      ),

      ExerciseData(
        "Windshield Wipers",
        "An advanced core exercise where you move your legs side to side while keeping them elevated. "
            "It targets the obliques and requires strong core control.\n\n"
            "This movement is great for building rotational core strength.",
        ["Abs", "Obliques", "Core"],
        [
          "Keep legs controlled",
          "Don’t rush movement",
          "Engage core fully",
        ],
      ),

      ExerciseData(
        "V-Raises",
        "A dynamic core exercise where you raise both your legs and upper body to form a V shape. "
            "It engages the entire core and improves coordination.\n\n"
            "V-raises are effective for building strong and defined abs.",
        ["Abs", "Core"],
        [
          "Lift arms and legs together",
          "Keep movement controlled",
          "Don’t use momentum",
        ],
      ),

      ExerciseData(
        "Mountain Climbers",
        "A fast-paced exercise that combines cardio and core work. "
            "It involves driving your knees toward your chest in a plank position.\n\n"
            "Mountain climbers improve endurance, burn calories, and strengthen the core.",
        ["Core", "Legs", "Shoulders"],
        [
          "Keep a steady pace",
          "Don’t bounce hips",
          "Engage your core",
        ],
      ),
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
            Navigator.push(context,
            MaterialPageRoute(builder: (_)=> ExerciseDetailScreen(name: ex.name,description: ex.description, muscles: ex.muscles, tips: ex.tips)));
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

  final List<String> muscles;
  final List<String> tips;


  ExerciseData(this.name, this.description,this.muscles,this.tips);


}