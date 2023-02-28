import 'package:color_mixing/utils/color_mixer.dart';
import 'package:color_mixing/utils/dimensions.dart';
import 'package:flutter/material.dart';

/// First Screen of the app starts after splash screen
class MainScreen extends StatefulWidget {
  /// Constructor of main screen
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _backgroundColor = ColorMixer.color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text(
          'Color Mixing',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: Dimensions.fontSizeLarge,
                fontWeight: FontWeight.w600,
              ),
        ),
        backgroundColor: _backgroundColor,
      ),
      body: InkWell(
        onTap: () => setState(() {
          _backgroundColor = ColorMixer.color;
        }),
        child: Center(
          child: Text(
            'Hey There',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
