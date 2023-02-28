import 'dart:math';
import 'dart:ui';

/// Class to Mix Colors used in app
class ColorMixer {
  final Random _random = Random();
  final int _maxNumber = 255;

  /// Function that responsible for change colors randomly and get
  Color get color => Color.fromARGB(
        _random.nextInt(_maxNumber),
        _random.nextInt(_maxNumber),
        _random.nextInt(_maxNumber),
        _random.nextInt(_maxNumber),
      );
}
