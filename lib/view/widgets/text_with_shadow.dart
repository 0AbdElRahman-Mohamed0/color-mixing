import 'package:color_mixing/utils/dimensions.dart';
import 'package:flutter/material.dart';

/// Custom Text widget with a shadow outside it
class TextWithShadow extends StatelessWidget {
  /// Text shows in the widget when used
  final String text;

  /// Font size of that text and if not declared there is a default value
  final double? fontSize;

  /// Font weight of that text and if not declared there is a default value
  final FontWeight? fontWeight;

  /// Constructor of text with shadow
  /// The [text] argument must not be null.
  /// The [fontSize] and [fontWeight] can be null and it will use default
  /// value of them.
  const TextWithShadow({
    Key? key,
    required this.text,
    this.fontSize = Dimensions.fontSizeLarge,
    this.fontWeight = FontWeight.w800,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        shadows: [
          const BoxShadow(
            blurRadius: Dimensions.blurRadius,
            offset: Offset.zero,
          ),
        ],
      ),
    );
  }
}
