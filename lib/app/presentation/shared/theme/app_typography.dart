import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle get textBig => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 54,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get textButton => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textLarge => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get textMedium => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get textSmall => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );
}
