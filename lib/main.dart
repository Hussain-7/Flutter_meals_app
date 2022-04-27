import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Daily Meals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline1: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: "RobotoCondensed",
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        // home: CategoriesScreen(),
        routes: {
          '/': (ctx) => TabsScreen(),
          CategoryMealsScreen.route: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.route: (ctx) => MealDetailScreen(),
        },
        // onGenerateRoute: (settings) {
        //   print(settings.name);
        //   print(settings.arguments);
        //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        // },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        });
  }
}
