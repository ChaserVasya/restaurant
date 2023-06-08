import 'package:flutter/material.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:restaurant/presentation/screens/category/widgets/dish_image.dart';
import 'package:restaurant/presentation/screens/category/widgets/dish_info_dialog.dart';

class DishesGrid extends StatelessWidget {
  final List<Dish> dishes;

  const DishesGrid(
    this.dishes, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        const crossAxisCount = 3;
        const mainAxisSpacing = 14.0;
        const crossAxisSpacing = 8.0;
        const textHeight = 34.0;

        final gridWidth = constrains.maxWidth;
        final childWidth =
            (gridWidth - (crossAxisCount - 1) * crossAxisSpacing) /
                crossAxisCount;
        final imageHeight = childWidth;
        final childHeight = imageHeight + textHeight;

        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: childWidth / childHeight,
          ),
          children: [
            for (final dish in dishes)
              GestureDetector(
                onTap: () => showDishInfoDialog(dish, context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DishImage(dish.imageUrl!, size: imageHeight),
                    Text(
                      dish.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
