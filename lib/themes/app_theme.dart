import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPrimary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: colorPrimary,

      // AppBarTheme
      appBarTheme: const AppBarTheme(
        color: colorPrimary,
        elevation: 0,
        centerTitle: true,
      ),
      // TextButton Style
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: colorPrimary)),

      // FloatingActionButton
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: colorPrimary),

      // ElevatedButton

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: colorPrimary,
              shape: const StadiumBorder(),
              elevation: 0)));
}
