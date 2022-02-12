import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static String font = "Meiryo";

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: font,
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark, //prefix icon color form input on focus
    fontFamily: font,
  );
}
