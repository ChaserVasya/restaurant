import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/data/models/category/category.dart';
import 'package:restaurant/presentation/screens/category/category_screen.dart';
import 'package:restaurant/presentation/screens/main/main_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/main', page: MainRoute.page, initial: true),
        AutoRoute(path: '/category', page: CategoryRoute.page),
      ];
}
