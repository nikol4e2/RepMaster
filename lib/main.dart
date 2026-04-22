import 'package:flutter/material.dart';
import 'package:repmaster/colors/AppCollors.dart';
import 'package:repmaster/widgets/CategoryWorkoutScreen.dart';
import 'package:repmaster/widgets/ExercisesScreen.dart';
import 'package:repmaster/workout_structure/enums/Category_workout.dart';
import 'package:repmaster/workout_structure/enums/WorkoutLevel.dart';
import 'package:repmaster/widgets/CategoryCard.dart';
import 'package:repmaster/widgets/WorkoutsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RepMaster',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      WelcomeScreen(onStart: () =>changeTab(1)), // Home
      const WorkoutsScreen(), // Workouts
       ExercisesScreen(),

    ];
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "Home"),
          NavigationDestination(icon: Icon(Icons.fitness_center_rounded), label: "Workouts"),
          NavigationDestination(icon: Icon(Icons.list_alt_rounded), label: "Exercises")

        ],
      ),
    );
  }


  void changeTab(int index){
    setState(() {
      _currentIndex=index;
    });
  }
}

class WelcomeScreen extends StatelessWidget {

  final VoidCallback onStart;
  const WelcomeScreen({super.key,required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Welcome to RepMaster",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 8,
                    color: Colors.black38,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            Text(
              "Follow ready-made workouts crafted to push your strength and endurance.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 60),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColors.primary,
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 8,
                shadowColor: Colors.black45,
              ),
              onPressed: onStart

              ,
              child: const Text(
                "Go to Workouts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}