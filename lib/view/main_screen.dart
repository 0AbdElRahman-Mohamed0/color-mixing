import 'package:color_mixing/utils/color_mixer.dart';
import 'package:flutter/material.dart';

/// First Screen of the app starts after splash screen
class MainScreen extends StatefulWidget {
  /// Constructor of main screen
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _backgroundColor = ColorMixer().color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Color Mixing'),
        backgroundColor: _backgroundColor,
      ),
      body: InkWell(
        onTap: () => setState(() {
          _backgroundColor = ColorMixer().color;
        }),
        child: const Center(
          child: Text(
            'Hey There',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
