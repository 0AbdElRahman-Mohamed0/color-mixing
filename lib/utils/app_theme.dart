import 'package:flutter/material.dart';

/// Theme of the app
class AppTheme {
  /// get Theme of app
  static ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        shadowColor: const Color(0xFF000000),
        fontFamily: 'Open_Sans',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
          headlineLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
      );
}
