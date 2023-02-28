import 'package:flutter/material.dart';

/// Theme of the app
class AppTheme {
  /// get Theme
  static ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Open_Sans',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
      );
}
