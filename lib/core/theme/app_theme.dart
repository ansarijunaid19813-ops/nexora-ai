import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const background = Color(0xFF09090B);
  static const card = Color(0xFF15151A);
  static const accent = Color(0xFFD4AF37);
  static const text = Color(0xFFF8F8F8);
  static const textSecondary = Color(0xFF9A9A9A);
  static const border = Color(0xFF2A2A2F);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.accent,
        background: AppColors.background,
        surface: AppColors.card,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayLarge: TextStyle(color: AppColors.text),
          displayMedium: TextStyle(color: AppColors.text),
          bodyLarge: TextStyle(color: AppColors.text),
          bodyMedium: TextStyle(color: AppColors.text),
        ),
      ),
    );
  }
}