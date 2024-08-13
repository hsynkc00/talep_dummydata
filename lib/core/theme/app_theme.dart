// lib/core/theme/app_theme.dart
import 'colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  hintColor: AppColors.secondary,
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  fontFamily: 'Poppins',
);
