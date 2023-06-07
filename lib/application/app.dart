import 'package:flutter/material.dart';
import 'package:restaurant/application/routes/app_route.dart';
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
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: themeUI,
    );
  }
}
