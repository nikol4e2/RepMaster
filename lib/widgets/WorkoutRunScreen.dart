import "package:flutter/material.dart";
import "package:repmaster/colors/AppCollors.dart";

import "../workout_structure/Workout.dart";

import "dart:async";

import 'package:flutter_vibrate/flutter_vibrate.dart';

class WorkoutRunScreen extends StatefulWidget {
  final Workout workout;



   const WorkoutRunScreen({super.key, required this.workout});


  @override
  State<WorkoutRunScreen> createState() => _WorkoutRunScreenState();
}

class _WorkoutRunScreenState extends State<WorkoutRunScreen> {



  final TextEditingController _controller = TextEditingController();


  Timer ? _restTimer;
  bool isResting =false;
  int restSeconds = 60;
  int activeExerciseIndex = 0;
  int activeSetIndex = 0;

  double progress=1.0;

  double _calculateProgress(){
    int totalSets =0;
    int completedSets =0;

    for(var ex in widget.workout.exercises) {
      totalSets += ex.sets.length;
    }

    for(int i=0;i < widget.workout.exercises.length;i++)
      {
        for(int j=0;j<widget.workout.exercises[i].sets.length;j++)
          {
            if(i<activeExerciseIndex || (i ==activeExerciseIndex && j<activeSetIndex))
              {
                completedSets++;
              }
          }
      }


    return totalSets == 0 ? 0: completedSets/totalSets;


  }

  bool _isLastSet(){
    final exercise =widget.workout.exercises;

    return activeExerciseIndex == exercise.length-1 && activeSetIndex == exercise.last.sets.length-1;
  }

  void _nextSet() {
    final exercises = widget.workout.exercises;

    if (_isLastSet())
    {
      _showFinishDialog();
      return;
    }

    if (activeSetIndex < exercises[activeExerciseIndex].sets.length - 1) {
      activeSetIndex++;
    } else if (activeExerciseIndex < exercises.length - 1) {
      activeExerciseIndex++;
      activeSetIndex = 0;
    }

    _controller.clear();

    setState(() {});
  }


   void  _startRestTimer()  {

    _restTimer?.cancel();
    setState(() {
      isResting=true;
      restSeconds=60;
      progress=1.0;
    });

    _restTimer=Timer.periodic(Duration(seconds: 1), (timer) async{
      if(restSeconds>0)
        {
          setState(() {
            restSeconds--;
            progress=restSeconds/60;
          });
        }else {
        timer.cancel();

        if(await Vibrate.canVibrate)
          {
            Vibrate.feedback(FeedbackType.success);
          }
        setState(() {
          isResting=false;
          _nextSet();
        });
      }
    });
  }


  void _showFinishDialog(){
    showDialog(context: context, barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Workout Complete"),
        content: const Text("Bravo! You finished your workout."),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context); //closing dialog
              Navigator.pop(context); //going back
            },
            child: const Text("DONE"),
          )
        ],
      )

    );
  }

  @override
  void dispose() {
    _restTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(widget.workout.name),
        backgroundColor: AppColors.primary,


      ),
      body: Stack(
        children:[
          LinearProgressIndicator(
            value: _calculateProgress(),
            minHeight: 6,
            backgroundColor: AppColors.progressInactive,
            valueColor: AlwaysStoppedAnimation(AppColors.progressActive),
          ),
          ListView.builder(
          itemCount: widget.workout.exercises.length,
          itemBuilder: (context, i) {
            final exercise = widget.workout.exercises[i];

            return Card(
              color: AppColors.surface,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: AppColors.outline)
              ),
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
                        color: AppColors.textPrimary
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

                        return GestureDetector(
                          onHorizontalDragEnd: (details){
                            if(details.primaryVelocity !>0)
                              {
                                _nextSet();
                              }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            padding: EdgeInsets.all(isActive ? 16 : 10),
                            decoration: BoxDecoration(
                              color: isActive
                                  ? AppColors.surfaceBright
                                  : AppColors.surface,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isActive
                                    ? AppColors.primary
                                    : AppColors.outline,
                                width: isActive ? 2 : 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [


                                Row(
                                  children: [
                                    Text("Set ${j + 1} ", style: TextStyle(color: AppColors.textSecondary, fontSize: 17, fontWeight: FontWeight.bold),),

                                    const Spacer(),
                                    Text("Target: ${set.goal}", style: TextStyle(color: AppColors.primary, fontSize: 17, fontWeight: FontWeight.bold),),
                                    SizedBox(width: 10,),
                                    isActive
                                        ? SizedBox(
                                      width: 70,
                                      child: TextField(
                                        controller: _controller,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: "${set.goal}",
                                          hintStyle: const TextStyle(color: AppColors.textSecondary),
                                          filled: true,
                                          fillColor: AppColors.surfaceDim,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none
                                          ),
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
                                        style: TextStyle(color: AppColors.textPrimary),
                                      ),
                                    )
                                        :  Text("Done: ${set.done}" , style: TextStyle(color: AppColors.primary, fontSize: 17, fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                const SizedBox(height: 8),


                                if (isActive)
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.primary,
                                        foregroundColor: AppColors.onPrimary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 12)
                                      ),
                                      onPressed: () {
                                        final input = int.tryParse(_controller.text) ?? set.goal;

                                        setState(() {
                                          set.done=input;
                                        });

                                        if (_isLastSet()) {

                                          _showFinishDialog();
                                        } else {

                                          _startRestTimer();
                                        }
                                      },
                                      child: const Text("COMPLETE SET", style: TextStyle(color: AppColors.onPrimary,fontWeight: FontWeight.bold),),
                                    ),
                                  ),


                                if (isActive)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove,color: AppColors.primary,),
                                        onPressed: () {
                                          setState(() {
                                            if (set.done > 0) set.done--;
                                          });
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.add, color: AppColors.primary,),
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
        if(isResting)
          Container(
            color: AppColors.background.withOpacity(0.95),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "REST",
                    style: TextStyle(
                      fontSize: 40,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: progress,
                          strokeWidth: 60,
                          color: AppColors.restTimer,
                          backgroundColor: AppColors.progressInactive,
                        ),
                        Text(
                          "$restSeconds",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                  ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        foregroundColor: AppColors.onSecondary
                      ),
                  onPressed: (){
                    _restTimer?.cancel();
                    setState(() {
                      isResting=false;
                      _nextSet();

                    });
                  }, child: Text("SKIP", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
                ],
              ),
            ),
          )

        ]
      ),
    );
  }
}