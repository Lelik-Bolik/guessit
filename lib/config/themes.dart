import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: _textTheme,
  );

  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    accentColor: Colors.amberAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: _textTheme,
  );

  static TextTheme _textTheme = TextTheme(
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
  );

  static TextStyle _bodyText1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.ssp,
  );

  static TextStyle _bodyText2 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20.ssp,
  );
}
