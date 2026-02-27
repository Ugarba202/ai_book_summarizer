import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF24966D);
  static const Color secondary = Color(0xFF14352D);
  static const Color accent = Color(0xFFE9F6F1);
  static const Color background = Color(0xFF14352D);
  static const Color surface = Color(0xFF1A453A);
  static const Color surfaceVariant = Color(0xFF2C5E4E);
  static const Color cardBg = Colors.white;
  static const Color textBody = Colors.white70;
  static const Color textHeadline = Colors.white;
  static const Color textDark = Color(0xFF14352D);
  static const Color textLight = Colors.white;
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
      ),
      textTheme: GoogleFonts.outfitTextTheme(
        TextTheme(
          headlineLarge: GoogleFonts.outfit(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textHeadline,
          ),
          headlineMedium: GoogleFonts.outfit(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textHeadline,
          ),
          bodyLarge: GoogleFonts.outfit(
            fontSize: 16,
            color: AppColors.textBody,
          ),
          bodyMedium: GoogleFonts.outfit(
            fontSize: 14,
            color: AppColors.textBody,
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surface,
        selectedColor: AppColors.primary,
        labelStyle: GoogleFonts.outfit(fontSize: 12, color: Colors.white),
        secondaryLabelStyle: GoogleFonts.outfit(fontSize: 12, color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.outfit(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
