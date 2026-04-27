import 'package:flutter/material.dart';
import 'package:repmaster/colors/AppCollors.dart';

class Categorycard extends StatelessWidget {

  final String title;
  final String imagePath;
  final Color color;
  final VoidCallback onTap;


  const Categorycard({required this.title,
    required this.imagePath,
    required this.color,
    required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceBright,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.3),width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0,4),
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(imagePath, height: 70, width: 70, fit: BoxFit.contain,),
            SizedBox(height: 12,),
            Text(title,style: TextStyle(color: AppColors.primary,fontSize: 18, fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
