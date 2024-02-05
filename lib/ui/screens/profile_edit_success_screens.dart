import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';

class ProfileEditSuccessScreens extends StatelessWidget {
  const ProfileEditSuccessScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgraundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Anda Success\nUpdate Profile',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Lottie.asset('assets/lotties/lottie_success.json'),
            const SizedBox(
              height: 40,
            ),
            CustomFilledButton(
              width: 250,
              title: 'My Profile',
              color: kOrangeColor,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
