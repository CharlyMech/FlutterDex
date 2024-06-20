import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RiveAnimation.asset(
        'assets/splash/loading_splash.riv',
        fit: BoxFit.fill,
      ),
    );
  }
}
