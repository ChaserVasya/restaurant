import 'package:flutter/material.dart';
import 'package:restaurant/data/models/category/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  final void Function()? onTap;

  const CategoryCard(
    this.category, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Image.network(category.imageUrl),
          Positioned(
            top: 12,
            left: 16,
            child: Text(category.name),
          ),
        ],
      ),
    );
  }
}
