import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    )
  );
}