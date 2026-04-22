import 'package:flutter/material.dart';
import '../colors/AppCollors.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final List<String> muscles;
  final List<String> tips;

  const ExerciseDetailScreen({
    super.key,
    required this.name,
    required this.description,
    required this.muscles,
    required this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          name,
          style: const TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // ✅ Scrollable (за долг текст)
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          // 🔹 IMAGE / ICON CARD
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.outline),
            ),
            child: const Icon(
              Icons.fitness_center,
              size: 60,
              color: Colors.white54,
            ),
          ),

          const SizedBox(height: 20),

          // 🔹 NAME
          Text(
            name,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),

          const SizedBox(height: 16),

          // 🔹 DESCRIPTION
          _sectionTitle("Description"),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 24),

          // 🔹 MUSCLES
          _sectionTitle("Muscles Worked"),
          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: muscles
                .map(
                  (m) => Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.outline),
                ),
                child: Text(
                  m,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 13,
                  ),
                ),
              ),
            )
                .toList(),
          ),

          const SizedBox(height: 24),

          // 🔹 TIPS
          _sectionTitle("Tips"),
          const SizedBox(height: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tips
                .map(
                  (tip) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "• $tip",
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
              ),
            )
                .toList(),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // 🔧 reusable section title
  Widget _sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
    );
  }
}