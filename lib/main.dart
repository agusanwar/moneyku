import 'package:flutter/material.dart';
import 'package:moneyku/ui/screens/on_boarding_screens.dart';
import 'package:moneyku/ui/screens/pages_navigation/main_screens.dart';
import 'package:moneyku/ui/screens/sign_in_screens.dart';
import 'package:moneyku/ui/screens/sign_up_screens.dart';
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
        '/sign-up': (context) => const SignUpScreens(),
        '/sign-in': (context) => const SignInScreens(),
        '/home': (context) => const MainScreens(),
      },
    );
  }
}
