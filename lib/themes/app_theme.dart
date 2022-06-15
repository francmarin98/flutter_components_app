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
              elevation: 0
          )
      )
      ,
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: colorPrimary),
        
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPrimary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPrimary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10)
          )
        )


      ));
}
