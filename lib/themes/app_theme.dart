import 'package:flutter/material.dart'
    show AppBarTheme, Colors, Color, ThemeData;

class AppTheme {
  static const Color colorPrimary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: colorPrimary,
      appBarTheme: const AppBarTheme(
        color: colorPrimary,
        elevation: 0,
        centerTitle: true,
      ));
}
