import 'package:color_mixing/utils/dimensions.dart';
import 'package:flutter/material.dart';

/// Animation of app objects
class CustomTweenAnimation extends StatelessWidget {
  /// Child of the tween animation that you want to animate on
  final Widget child;

  /// default animation is from top to down if you make it true it will be
  /// from bottom to top
  final bool fromBottom;

  /// Constructor of custom tween animation
  /// The [child] argument must not be null.
  /// The [fromBottom] can be null and it will use default
  /// value of false.
  const CustomTweenAnimation({
    Key? key,
    required this.child,
    this.fromBottom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.bounceOut,
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 1000),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(
              top: fromBottom ? 0 : val * Dimensions.tweenAnimationValue,
              bottom: fromBottom ? val * Dimensions.tweenAnimationValue : 0,
            ),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
