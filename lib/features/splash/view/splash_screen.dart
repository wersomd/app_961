import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_961/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2200,
      splash: 'assets/images/main/logo.jpg',
      splashIconSize: 240,
      backgroundColor: const Color.fromARGB(255, 0, 122, 252),
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
