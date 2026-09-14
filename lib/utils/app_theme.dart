import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF1E88E5);
  static const Color secondaryColor = Color(0xFF43A047);
  static const Color accentColor = Color(0xFFFFB300);
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);

  static const Color lightBg = Color(0xFFFAFAFA);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF212121);

  static const Color darkBg = Color(0xFF121212);
  static const Color darkCard = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFE0E0E0);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBg,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 4,
      centerTitle: true,
      titleTextStyle: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      color: lightCard,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey[200]!,
      labelStyle: GoogleFonts.roboto(
        color: lightText,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      selectedColor: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primaryColor, width: 2),
      ),
      labelStyle: GoogleFonts.roboto(color: Colors.grey[700]),
      hintStyle: GoogleFonts.roboto(color: Colors.grey[500]),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: lightText,
      ),
      displayMedium: GoogleFonts.roboto(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: lightText,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: lightText,
      ),
      titleMedium: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: lightText,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        color: lightText,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: 14,
        color: lightText,
      ),
      bodySmall: GoogleFonts.roboto(
        fontSize: 12,
        color: Colors.grey[600],
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBg,
    appBarTheme: AppBarTheme(
      backgroundColor: darkCard,
      foregroundColor: darkText,
      elevation: 4,
      centerTitle: true,
      titleTextStyle: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: darkText,
      ),
    ),
    cardTheme: CardTheme(
      color: darkCard,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey[800]!,
      labelStyle: GoogleFonts.roboto(
        color: darkText,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      selectedColor: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[800],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[700]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey[700]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primaryColor, width: 2),
      ),
      labelStyle: GoogleFonts.roboto(color: Colors.grey[400]),
      hintStyle: GoogleFonts.roboto(color: Colors.grey[500]),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: darkText,
      ),
      displayMedium: GoogleFonts.roboto(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: darkText,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: darkText,
      ),
      titleMedium: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: darkText,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        color: darkText,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: 14,
        color: darkText,
      ),
      bodySmall: GoogleFonts.roboto(
        fontSize: 12,
        color: Colors.grey[500],
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}
