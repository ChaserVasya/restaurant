import 'package:flutter/material.dart';
import 'package:restaurant/uikit/consts_ui.dart';

class DishImage extends StatelessWidget {
  final String url;
  final double? size;

  const DishImage(
    this.url, {
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: ConstsUI.roundedBorder,
      ),
      child: Center(
        child: Image.network(url),
      ),
    );
  }
}
