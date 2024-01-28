import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Colors.deepPurple,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 246, 246),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
  );
}
