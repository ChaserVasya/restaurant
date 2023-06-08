import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/application/di/di.dart';
import 'package:restaurant/application/routes/app_route.dart';
import 'package:restaurant/presentation/blocs/user_cubit/user_cubit.dart';
import 'package:restaurant/uikit/theme_ui.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<UserCubit>()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: themeUI,
      ),
    );
  }
}
