import 'package:color_mixing/utils/color_mixer.dart';
import 'package:color_mixing/utils/dimensions.dart';
import 'package:color_mixing/view/widgets/text_with_shadow.dart';
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
        title: const TextWithShadow(text: 'Color Mixing'),
        backgroundColor: _backgroundColor,
        actions: [
          IconButton(
            onPressed: () => setState(() {
              _backgroundColor = ColorMixer.color;
            }),
            icon: const Icon(
              Icons.color_lens_outlined,
              shadows: [
                BoxShadow(
                  blurRadius: Dimensions.blurRadius,
                  offset: Offset.zero,
                ),
              ],
            ),
          ),
        ],
      ),
      body: InkWell(
        onTap: () => setState(() {
          _backgroundColor = ColorMixer.color;
        }),
        child: const Center(
          child: TextWithShadow(
            text: 'Hey There',
            fontSize: Dimensions.fontSizeDefault,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
