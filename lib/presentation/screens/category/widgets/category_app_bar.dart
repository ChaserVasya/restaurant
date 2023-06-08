import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/data/models/category/category.dart';
import 'package:restaurant/presentation/blocs/dishes_cubit/dishes_cubit.dart';
import 'package:restaurant/utils/extensions/list.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const _kChipBarHeight = 30.0;

  final Category category;

  const CategoryAppBar(this.category, {super.key});

  @override
  Size get preferredSize => const Size(
        double.infinity,
        _kChipBarHeight + kToolbarHeight,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishesCubit, DishesState>(
      builder: (context, state) {
        return AppBar(
          title: Text(category.name),
          actions: const [CircleAvatar()],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, _kChipBarHeight),
            child: Row(
              children: state.when(
                initial: () {
                  return const [SizedBox.shrink()];
                },
                main: (_, currentTag, tags) {
                  return <Widget>[
                    for (final tag in tags)
                      ChoiceChip(
                        selected: tag == currentTag,
                        onSelected: (_) {
                          context.read<DishesCubit>().getDishesByTag(tag);
                        },
                        label: Text(tag),
                      ),
                  ].separateAndWrapBy(const SizedBox(width: 8));
                },
                error: (message) {
                  return [Text(message)];
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
