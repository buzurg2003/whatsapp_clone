import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    foregroundColor: AppColors.white,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.activeColor,
  ),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    foregroundColor: AppColors.white
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
  ).copyWith(
    secondary: Colors.green,
    brightness: Brightness.dark
  ),
  useMaterial3: true,
);
