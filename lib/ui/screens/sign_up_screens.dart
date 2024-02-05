import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:moneyku/ui/widgets/forms_field.dart';

class SignUpScreens extends StatelessWidget {
  const SignUpScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text(
                  'MONEY-KU',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'First Create Acoount',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username Input
                const CustomFormField(
                  title: 'Username',
                ),
                const SizedBox(height: 10),
                // Email Input
                const CustomFormField(
                  title: 'Email',
                ),
                const SizedBox(height: 10),
                // Password Input
                const CustomFormField(
                  title: 'Password',
                  obsecureText: true,
                ),
                const SizedBox(height: 20),
                // Button Sign in
                CustomFilledButton(
                  title: 'Sign Up',
                  color: kOrangeColor,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                CustomTextButton(
                  title: 'Sign In',
                  color: kLightBackgraundColor,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
