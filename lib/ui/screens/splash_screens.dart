import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/on-boarding', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkSoftBackgraundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              'MONEY-KU',
              style: whiteTextStyle.copyWith(
                fontSize: 34,
                fontWeight: semiBold,
                letterSpacing: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
