import 'package:flutter/material.dart';
import 'package:restaurant/application/data/models/category/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(
    this.category, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(category.imageUrl),
        Text(category.name),
      ],
    );
  }
}
