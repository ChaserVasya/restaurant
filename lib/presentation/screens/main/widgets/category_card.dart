import 'package:flutter/material.dart';
import 'package:restaurant/data/models/category/category.dart';

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
        Positioned(
          top: 12,
          left: 16,
          child: Text(category.name),
        ),
      ],
    );
  }
}
