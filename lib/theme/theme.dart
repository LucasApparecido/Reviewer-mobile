import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: 'Roboto',
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
    background: AppColors.background,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.surface,
    iconTheme: IconThemeData(color: AppColors.darkText),
    titleTextStyle: TextStyle(
      color: AppColors.darkText,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 18, color: AppColors.darkText),
    bodyMedium: TextStyle(fontSize: 16, color: AppColors.mediumText),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 16),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.border),
      borderRadius: BorderRadius.circular(8),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    labelStyle: const TextStyle(color: AppColors.mediumText),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      minimumSize: const Size.fromHeight(48),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16),
      side: const BorderSide(color: AppColors.mediumText),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
  ),
);
