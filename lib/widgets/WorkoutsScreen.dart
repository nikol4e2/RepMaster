import 'package:flutter/material.dart';
import '../colors/AppCollors.dart';
import '../workout_structure/enums/Category_workout.dart';
import '../workout_structure/enums/WorkoutLevel.dart';
import 'CategoryCard.dart';
import 'CategoryWorkoutScreen.dart';

class WorkoutsScreen extends StatefulWidget {
  const WorkoutsScreen({super.key});

  @override
  State<WorkoutsScreen> createState() => _WorkoutsScreenState();
}

class _WorkoutsScreenState extends State<WorkoutsScreen> {
  Set<String> _selectedLevel = {"Beginner"};

  Workoutlevel get levelEnum {
    switch (_selectedLevel.first) {
      case 'Beginner':
        return Workoutlevel.beginner;
      case 'Intermediate':
        return Workoutlevel.intermediate;
      case 'Advanced':
        return Workoutlevel.advanced;
      default:
        return Workoutlevel.beginner;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "REP MASTER",
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildLevelSelector(context),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Choose Category",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _buildCategoryGrid(context),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildLevelSelector(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: SegmentedButton<String>(
        segments: const [
          ButtonSegment(value: "Beginner", label: Text("Beginner")),
          ButtonSegment(value: 'Intermediate', label: Text('Intermediate')),
          ButtonSegment(value: 'Advanced', label: Text('Advanced')),
        ],
        selected: _selectedLevel,
        onSelectionChanged: (newSelection) {
          setState(() {
            _selectedLevel = newSelection;
          });
        },
        style: SegmentedButton.styleFrom(
          backgroundColor: AppColors.surface,
          foregroundColor: AppColors.textSecondary,
          selectedBackgroundColor: AppColors.primary,
          selectedForegroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context) {
    final categories = [
      _CategoryData("Push", "assets/images/chest.png", Colors.indigo, Category_workout.push),
      _CategoryData("Pull", "assets/images/back.png", Colors.deepOrange, Category_workout.pull),
      _CategoryData("Pull + Push", "assets/images/both.png", Colors.purple, Category_workout.pushPull),
      _CategoryData("Abs", "assets/images/abs.png", Colors.teal, Category_workout.abs),
      _CategoryData("Legs", "assets/images/legs.png", Colors.green, Category_workout.legs)
    ];

    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final cat = categories[index];
        return Categorycard(
          title: cat.title,
          imagePath: cat.image,
          color: cat.color,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CategoryWorkoutScreen(category: cat.categoryEnum, level: levelEnum),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildBottomNavBar() {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: "home"),
        NavigationDestination(icon: Icon(Icons.fitness_center_rounded), label: 'Workouts'),
        NavigationDestination(icon: Icon(Icons.more_horiz_rounded), label: 'More'),
      ],
      selectedIndex: 0,
      onDestinationSelected: (index) {},
    );
  }
}

class _CategoryData {
  final String title;
  final String image;
  final Color color;
  final Category_workout categoryEnum;

  _CategoryData(this.title, this.image, this.color, this.categoryEnum);
}