import 'package:color_mixing/utils/app_constants.dart';
import 'package:color_mixing/utils/dimensions.dart';
import 'package:color_mixing/view/screens/main_screen.dart';
import 'package:flutter/material.dart';

/// Splash screen of the app
class SplashScreen extends StatefulWidget {
  /// Constructor of splash
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _next();
  }

  Future<void> _next() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    await Navigator.pushAndRemoveUntil<MainScreen>(
      context,
      MaterialPageRoute(
        builder: (_) => const MainScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: Dimensions.imageSize,
              width: Dimensions.imageSize,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppConstants.appName,
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
    );
  }
}
