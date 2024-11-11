import 'package:flutter/material.dart';
class AppTheme {
   static const Color primary = Colors.green;
   static final ThemeData lightTheme = ThemeData.light().copyWith(
       primaryColor: primary,
         appBarTheme: const AppBarTheme(
         color: primary,
         titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
         iconTheme: IconThemeData(color: Colors.white)
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
       )
      );
}