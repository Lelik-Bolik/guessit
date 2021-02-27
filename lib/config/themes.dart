import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: _textTheme2,
  );

  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    accentColor: Colors.amberAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: _textTheme2,
  );

  static TextTheme _textTheme2 = TextTheme(
    headline1: GoogleFonts.comfortaa(
        fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.comfortaa(
        fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.comfortaa(fontSize: 46, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.comfortaa(
        fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.comfortaa(fontSize: 23, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.comfortaa(
        fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.comfortaa(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.comfortaa(
        fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.comfortaa(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.comfortaa(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.comfortaa(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.comfortaa(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.comfortaa(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );

  static TextStyle boldBodyText(BuildContext context) => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontWeight: FontWeight.bold);
}
