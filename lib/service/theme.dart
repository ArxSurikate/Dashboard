import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData themeData = _themeBuild();
  static const Color primaryColor = Color(0xFFD8550E);
  static const Color secondaryColor = Color(0xFF116BC5);
  static const Color tertiaryColor = Color(0xFF33C260);

  static const double mobileSize = 500;
  static const double tabletSize = 1100;

  static ThemeData _themeBuild() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[900],
      ),
      cardTheme: CardTheme(
        color: Colors.grey[300],
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}

/*
static ThemeData _themeBuild() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFFd1d8e0),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF4b6584),
      ),
      cardTheme: const CardTheme(
        color: Color(0xffbdc3c7),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xFFd1d8e0),
      ),
    );
  }
  */