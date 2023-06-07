import 'package:flutter/material.dart';
import 'package:restaurant/uikit/icons_ui.dart';

class AppScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body;

  const AppScaffold({
    super.key,
    this.appBar,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconsUI.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsUI.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsUI.bag),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsUI.profile),
            label: 'Аккаунт',
          ),
        ],
      ),
      body: body,
    );
  }
}
