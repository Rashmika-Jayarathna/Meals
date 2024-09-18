import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScrean extends StatelessWidget {
  const MealsScrean({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
