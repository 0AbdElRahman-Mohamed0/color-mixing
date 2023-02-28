import 'package:color_mixing/utils/app_theme.dart';
import 'package:color_mixing/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// Material widget class of the app
/// This widget is the root of your application.
class Main extends StatelessWidget {
  /// Constructor of the main class
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Mixing',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MainScreen(),
    );
  }
}
