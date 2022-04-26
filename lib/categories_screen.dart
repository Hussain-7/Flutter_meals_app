import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: const <Widget>[
        const Text('Cooking'),
        const Text('Drinks'),
        const Text('Fruits'),
        const Text('Vegetables'),
        const Text('Sweets'),
        const Text('Dairy'),
        const Text('Frozen'),
        const Text('Bakery'),
        const Text('Baking'),
        const Text('Canned'),
        const Text('Cleaning'),
        const Text('Dry'),
        const Text('Frozen'),
        const Text('Meat'),
        const Text('Produce'),
        const Text('Snacks'),
        const Text('Spices'),
        const Text('Sweets'),
        const Text('Tea'),
        const Text('Toiletries'),
        const Text('Wine'),
      ],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
