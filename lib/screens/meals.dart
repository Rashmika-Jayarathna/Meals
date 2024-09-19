import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScrean extends StatelessWidget {
  const MealsScrean({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'No meals found',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            Text(
              'Please check your filters',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      ); 

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
      itemBuilder: (ctx, index) => Text(
        meals[index].title,
      ),
    );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
