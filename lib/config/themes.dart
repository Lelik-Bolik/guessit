import 'package:flutter/material.dart';

abstract class Styles {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );

  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    accentColor: Colors.amberAccent,
    scaffoldBackgroundColor: Colors.black,
  );
}
