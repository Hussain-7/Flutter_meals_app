import 'package:flutter/material.dart';

class CatogoryMealsScreen extends StatelessWidget {
  const CatogoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals Page'),
      ),
      body: const Center(
        child: Text("CategoryMealsScreen"),
      ),
    );
  }
}
