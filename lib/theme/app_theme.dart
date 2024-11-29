import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)),
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      //FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
        foregroundColor: Colors.white, //Cambiar el color de icono
        shape: StadiumBorder(),//Redondea el icono
      ),
      //Elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          shape: StadiumBorder(),
          elevation: 5,
        ),
      ),
      //InputDecoration 
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:primary),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:primary),
          borderRadius: BorderRadius.circular(10)
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color:primary),
          borderRadius: BorderRadius.circular(10)
        )
        )
    );
}
