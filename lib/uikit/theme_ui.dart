import 'package:flutter/material.dart';

final themeUI = ThemeData(
  fontFamily: "SF-Pro-Display",
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    background: Colors.red,
    onBackground: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    primary: Colors.white,
    onPrimary: Colors.black,
    secondary: Colors.blue,
    onSecondary: Colors.green,
    surface: Colors.white,
    onSurface: Colors.red,
  ),
  //TODO сделать фон белым
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: Color(0xFF3364E0)),
    selectedItemColor: Color(0xFF3364E0),
    unselectedIconTheme: IconThemeData(color: Color(0xFFA5A9B2)),
    unselectedItemColor: Color(0xFFA5A9B2),
    backgroundColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
  ),
  scaffoldBackgroundColor: Colors.white,
);
