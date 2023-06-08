import 'package:flutter/material.dart';
import 'package:restaurant/uikit/consts_ui.dart';

final themeUI = () {
  const colorScheme = ColorScheme(
    brightness: Brightness.light,
    background: Colors.white,
    onBackground: Colors.black54,
    error: Colors.red,
    onError: Colors.white,
    primary: Colors.white,
    onPrimary: Colors.black54,
    secondary: Colors.blue,
    onSecondary: Colors.white,
    surface: Color(0xFFF8F7F5),
    onSurface: Colors.black54,
  );
  return ThemeData(
    fontFamily: "SF-Pro-Display",
    colorScheme: colorScheme,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: colorScheme.secondary),
      selectedItemColor: colorScheme.secondary,
      unselectedIconTheme: const IconThemeData(color: Color(0xFFA5A9B2)),
      unselectedItemColor: const Color(0xFFA5A9B2),
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colorScheme.secondary,
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: ConstsUI.roundedBorder,
      ),
      backgroundColor: colorScheme.surface,
      selectedColor: colorScheme.onSecondary,
      secondarySelectedColor: colorScheme.secondary,
      secondaryLabelStyle: TextStyle(
        color: colorScheme.onSecondary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: ConstsUI.roundedBorder,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(colorScheme.secondary),
        foregroundColor: MaterialStatePropertyAll(colorScheme.onSecondary),
      ),
    ),
  );
}();
