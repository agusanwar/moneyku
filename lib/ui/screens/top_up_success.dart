import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';

class TopUpSuccessScreens extends StatelessWidget {
  const TopUpSuccessScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Top Up Anda\n Telah Berhasil',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 150,
              child: Lottie.asset(
                'assets/lotties/lottie_topup_success.json',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomFilledButton(
              width: 250,
              title: 'Back To Home',
              color: kOrangeColor         ,
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
