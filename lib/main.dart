import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/screens/on_boarding_screens.dart';
import 'package:moneyku/ui/screens/pages_navigation/main_screens.dart';
import 'package:moneyku/ui/screens/pin_screens.dart';
import 'package:moneyku/ui/screens/profile_edit_pin_screens.dart';
import 'package:moneyku/ui/screens/profile_edit_pin_success.dart';
import 'package:moneyku/ui/screens/profile_edit_screens.dart';
import 'package:moneyku/ui/screens/profile_edit_success_screens.dart';
import 'package:moneyku/ui/screens/sign_in_screens.dart';
import 'package:moneyku/ui/screens/sign_up_screens.dart';
import 'package:moneyku/ui/screens/splash_screens.dart';
import 'package:moneyku/ui/screens/top_up_screens.dart';
import 'package:moneyku/ui/screens/top_up_success.dart';
import 'package:moneyku/ui/screens/transfer_screens.dart';
import 'package:moneyku/ui/screens/transfer_success_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kLightBackgraundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kOrangeColor,
          elevation: 0,
          titleTextStyle: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
          centerTitle: true,
        ),
      ),
      routes: {
        '/': (context) => const SplashScreens(),
        '/on-boarding': (context) => const OnBoardingScreens(),
        '/sign-up': (context) => const SignUpScreens(),
        '/sign-in': (context) => const SignInScreens(),
        '/home': (context) => const MainScreens(),
        '/pin': (context) => const PinScreens(),
        '/profile-edit': (context) => const ProfileEditScreens(),
        '/profile-edit-success': (context) => const ProfileEditSuccessScreens(),
        '/profile-edit-pin': (context) => const ProfileEditPinScreens(),
        '/profile-edit-pin-success': (context) =>
            const ProfileEditPinSuccessScreens(),
        // transaction
        '/top-up': (context) => const TopUpScreens(),
        '/top-up-success': (context) => const TopUpSuccessScreens(),
        // tramsfer
        '/transfer': (context) => const TransferScreens(),
        '/transfer-success': (context) => const TransferSuccessScreens(),
      },
    );
  }
}
