import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteNotifier extends StateNotifier<List<Meal>> {
  FavoriteNotifier() : super([]);

  bool toggleMealFavoriteStates(Meal meal) {
    final mealsFavorite = state.contains(meal);

    if (mealsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider = StateNotifierProvider<FavoriteNotifier,List<Meal>>((ref) {
  return FavoriteNotifier();
});
