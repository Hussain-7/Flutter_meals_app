import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const route = "/categories-meals";
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle as String),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Text('${categoryMeals[index].title}'),
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
