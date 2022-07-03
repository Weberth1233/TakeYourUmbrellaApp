import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
        scaffoldBackgroundColor: const Color(0xFF5E4EF6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF5E4EF6),
          elevation: 0,
          centerTitle: true,
        ),
      );
}
