import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle get textLarge => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get textMedium => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get textSmall => GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.bold,
      );
}
