import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/application/di/di.dart';
import 'package:restaurant/data/models/category/category.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:restaurant/domain/repositories/dishes_repository.dart';
import 'package:restaurant/presentation/blocs/dishes_cubit/dishes_cubit.dart';
import 'package:restaurant/presentation/screens/category/widgets/category_app_bar.dart';
import 'package:restaurant/presentation/screens/category/widgets/dishes_grid.dart';
import 'package:restaurant/presentation/screens/widgets/app_scaffold.dart';
import 'package:restaurant/uikit/consts_ui.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  final Category category;

  const CategoryScreen(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<DishesCubit>(),
      child: AppScaffold(
        appBar: CategoryAppBar(category),
        body: BlocBuilder<DishesCubit, DishesState>(
          builder: (context, state) => state.when(
            initial: _handleInitial,
            main: _handleMain,
            error: _handleError,
          ),
        ),
      ),
    );
  }

  Widget _handleInitial() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget _handleMain(List<Dish> dishes, Tag? currentTag, Set<Tag?> tags) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstsUI.contentPaddings),
      child: DishesGrid(dishes),
    );
  }

  Widget _handleError(String e) {
    return Column(
      children: [
        const Text('Ошибка!'),
        const SizedBox(height: 8),
        Text(e),
      ],
    );
  }
}
