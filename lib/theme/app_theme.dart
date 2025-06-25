import 'package:flutter/material.dart';

const Color lightPrimaryColor = Color(0xFF8D6E63);
const Color lightBackgroundColor = Color(0xFFF5F5F0);
const Color lightAccentColor = Color(0xFF795548);
const Color lightCardColor = Colors.white;

const Color darkPrimaryColor = Color(0xFFBCAAA4);
const Color darkBackgroundColor = Color(0xFF212121);
const Color darkAccentColor = Color(0xFF8D6E63);
const Color darkCardColor = Color(0xFF303030);


ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    cardColor: lightCardColor,
    colorScheme: base.colorScheme.copyWith(
      primary: lightPrimaryColor,
      secondary: lightAccentColor,
      background: lightBackgroundColor,
      surface: lightCardColor,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: lightPrimaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark(useMaterial3: true);
  return base.copyWith(
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    cardColor: darkCardColor,
    colorScheme: base.colorScheme.copyWith(
      primary: darkPrimaryColor,
      secondary: darkAccentColor,
      background: darkBackgroundColor,
      surface: darkCardColor,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: Colors.grey[850],
      elevation: 0,
    ),
  );
}