import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class TTextTheme {
  TTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(

    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.dark.withOpacity(0.5), fontFamily: GoogleFonts.lato().fontFamily),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.dark, fontFamily: GoogleFonts.lato().fontFamily),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.dark.withOpacity(0.5), fontFamily: GoogleFonts.lato().fontFamily),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: TColors.light.withOpacity(0.5), fontFamily: GoogleFonts.lato().fontFamily),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.light, fontFamily: GoogleFonts.lato().fontFamily),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.light.withOpacity(0.5), fontFamily: GoogleFonts.lato().fontFamily),
  );
}
