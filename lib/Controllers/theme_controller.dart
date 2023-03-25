// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey[300],
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    buttonColor: Colors.pink
  );

  
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey[800],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    buttonColor: Colors.green
  );
}
