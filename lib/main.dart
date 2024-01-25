import 'package:flutter/material.dart';
import 'package:moneyku/ui/screens/on_boarding_screens.dart';
import 'package:moneyku/ui/screens/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashScreens(),
        '/on-boarding': (context) => const OnBoardingScreens(),
      },
    );
  }
}
