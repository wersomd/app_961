import 'package:app_961/features/home/home.dart';
import 'package:app_961/features/onboarding/onboarding.dart';
import 'package:app_961/features/splash/splash.dart';

final routes = {
  '/': (context) => const SplashScreen(),
  '/onboarding': (context) => const OnboardingScreen(),
  '/home': (context) => const HomeScreen(),
};
