import 'package:flutter/material.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:restaurant/presentation/screens/category/widgets/dish_image.dart';
import 'package:restaurant/uikit/consts_ui.dart';
import 'package:restaurant/utils/extensions/list.dart';

Future<bool?> showDishInfoDialog(Dish dish, BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(ConstsUI.contentPaddings),
        shape: RoundedRectangleBorder(
          borderRadius: ConstsUI.roundedBorder,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                DishImage(dish.imageUrl!),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Row(
                    children: const <Widget>[
                      _IconButton(icon: Icons.favorite_border),
                      _IconButton(icon: Icons.close),
                    ].separateBy(ConstsUI.horSpace),
                  ),
                ),
              ],
            ),
            Row(children: [
              Text('${dish.price} ₽'),
              Text(' · ${dish.weight}г'),
            ]),
            Flexible(
              child: SingleChildScrollView(
                child: Text(dish.description),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Добавить в корзину',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ].separateBy(const SizedBox(height: 8)),
        ),
      );
    },
  );
}

class DishDialogBody extends StatelessWidget {
  const DishDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _IconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const _IconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.background,
      ),
      height: 40,
      width: 40,
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: 24),
        ),
      ),
    );
  }
}
