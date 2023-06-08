import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/application/di/di.dart';
import 'package:restaurant/application/routes/app_route.dart';
import 'package:restaurant/data/models/category/category.dart';
import 'package:restaurant/presentation/blocs/categories_cubit/categories_cubit.dart';
import 'package:restaurant/presentation/screens/main/widgets/category_card.dart';
import 'package:restaurant/presentation/screens/main/widgets/user_info_app_bar.dart';
import 'package:restaurant/presentation/screens/widgets/app_scaffold.dart';
import 'package:restaurant/uikit/consts_ui.dart';
import 'package:restaurant/utils/extensions/list.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CategoriesCubit>(),
      child: AppScaffold(
        appBar: const UserInfoAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ConstsUI.contentPaddings,
          ),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) => state.when(
              initial: _handleInitial,
              main: (categories) => _handleMain(categories, context),
              error: _handleError,
            ),
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

  Widget _handleMain(List<Category> categories, BuildContext context) {
    final separatedWidgets = <Widget>[
      for (final category in categories)
        CategoryCard(
          category,
          onTap: () => AutoRouter.of(context).push(
            CategoryRoute(category: category),
          ),
        ),
    ].separateAndWrapBy(const SizedBox(height: 8));

    return ListView.builder(
      itemCount: separatedWidgets.length,
      itemBuilder: (context, i) => separatedWidgets[i],
    );
  }

  Widget _handleError(String e) {
    return Center(
      child: Column(
        children: [
          const Text('Произошла непредвиденная ошибка :('),
          const SizedBox(height: 8),
          Text(e),
        ],
      ),
    );
  }
}
