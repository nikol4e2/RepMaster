import 'package:flutter/material.dart';
import 'package:repmaster/widgets/CategoryCard.dart';
import 'package:repmaster/widgets/CategoryWorkoutScreen.dart';
import './colors/AppCollors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'High Reps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(

        backgroundColor: Colors.transparent,

        title: Text(widget.title,
          style: TextStyle(
              color: AppColors.primary,
              fontSize:28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2
          )


        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.person_outline_rounded))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildLevelSelector(context),
            const SizedBox(height: 16,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Choose Category",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            const SizedBox(height: 20,),

            Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                child: _buildCategoryGrid(context),
                )
            )
          ],
        ),

      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildLevelSelector(BuildContext context){
    Set<String> _selectedLevel={"Begginer"};
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      child: SegmentedButton<String>(
        segments: const [
          ButtonSegment(value: "Beginner", label: Text("Beginner")),
          ButtonSegment(value: 'Intermediate', label: Text('Intermediate')),
          ButtonSegment(value: 'Advanced', label: Text('Advanced')),
        ],
        selected: const {'Beginner'},
        onSelectionChanged: (newSelection) {
          setState(() {
            _selectedLevel=newSelection;
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

  Widget _buildCategoryGrid(BuildContext context){
    final categories=[
      _CategoryData("Push", Icons.arrow_upward_rounded, Colors.indigo),
      _CategoryData("Pull", Icons.arrow_downward_rounded, Colors.deepOrange),
      _CategoryData("Pull + Push", Icons.swap_horiz_rounded, Colors.purple),
      _CategoryData("Abs", Icons.fitness_center_rounded, Colors.teal),
      _CategoryData("Legs", Icons.directions_run_rounded, Colors.green)

    ];

    return GridView.builder(physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16
        ),
        itemCount: categories.length,
        itemBuilder: (context, index){
          final cat= categories[index];
          return Categorycard(title: cat.title, icon: cat.icon, color: cat.color, onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:
              (context) => CategoryWorkoutScreen(category: cat.title))
            );
          });
        }
    );


  }

  Widget _buildBottomNavBar(){
    return NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "home"),
          NavigationDestination(icon: Icon(Icons.fitness_center_rounded), label: 'Workouts'),
          NavigationDestination(icon: Icon(Icons.more_horiz_rounded), label: 'More'),
        ],
      selectedIndex: 0,// Home is selected
      onDestinationSelected: (index){
        //TODO handle navigation
      },
    );
  }




}


class _CategoryData{
  final String title;
  final IconData icon;
  final Color color;

  _CategoryData(this.title, this.icon, this.color);
}
