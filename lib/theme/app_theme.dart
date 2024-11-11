import 'package:flutter/material.dart';
class AppTheme {
   static const Color primary = Colors.green;
   static final ThemeData lightTheme = ThemeData.light().copyWith(
       primaryColor: primary,
        // Color primario
         appBarTheme: const AppBarTheme(
         color: primary,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
       )
      );
}