import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final TextTheme baseText = GoogleFonts.poppinsTextTheme();

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.cyan,
      surface: Colors.white,
    ),

    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    dialogTheme: DialogThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: baseText.titleLarge?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: baseText.bodyMedium?.copyWith(
        color: Colors.black87,
        fontSize: 15,
      ),
    ),
    textTheme: baseText.copyWith(
      headlineMedium: baseText.headlineMedium?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: baseText.bodyMedium?.copyWith(
        color: Colors.black87,
        fontSize: 15,
      ),
      titleLarge: baseText.titleLarge?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: baseText.bodySmall?.copyWith(
        color: Colors.black54,
        fontSize: 12,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    textTheme: baseText,
    colorScheme: const ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.cyan,
      surface: Colors.grey,
    ),
  );
}
