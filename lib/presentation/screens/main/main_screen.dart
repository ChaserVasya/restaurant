import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/application/di/di.dart';
import 'package:restaurant/presentation/blocs/categories_cubit/categories_cubit.dart';
import 'package:restaurant/presentation/screens/main/widgets/category_card.dart';
import 'package:restaurant/presentation/screens/widgets/app_scaffold.dart';
import 'package:restaurant/uikit/consts_ui.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CategoriesCubit>(),
      child: AppScaffold(
        appBar: AppBar(
          //TODO починить
          leading: const Icon(Icons.location_on_outlined),
          title: const Text('hello'),
          actions: const [CircleAvatar()],
        ),
        body: Padding(
          padding: const EdgeInsets.all(ConstsUI.screenBodyPaddings),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) => state.when(initial: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }, main: (categories) {
              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, i) => CategoryCard(categories[i]),
              );
            }, error: (e) {
              return Center(
                child: Column(
                  children: [
                    const Text('Произошла непредвиденная ошибка :('),
                    const SizedBox(height: 8),
                    Text(e),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
