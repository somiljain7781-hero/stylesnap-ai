import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF7C3AED);
  static const Color secondary = Color(0xFFEC4899);
  static const Color accent = Color(0xFF06B6D4);

  static const Color background = Color(0xFFF8FAFC);

  static const Color white = Colors.white;
  static const Color black = Color(0xFF1E1E1E);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF7C3AED),
      Color(0xFFEC4899),
      Color(0xFF06B6D4),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}