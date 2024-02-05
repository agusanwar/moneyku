import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:moneyku/ui/widgets/forms_field.dart';

class ProfileEditPinScreens extends StatefulWidget {
  const ProfileEditPinScreens({super.key});

  @override
  State<ProfileEditPinScreens> createState() => _ProfileEditPinScreensState();
}

class _ProfileEditPinScreensState extends State<ProfileEditPinScreens> {
  // 1. create variable
  final oldPinController = TextEditingController(text: '');
  final newPinController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_circle_left_outlined,
            color: kWhiteColor,
          ),
        ),
        title: const Text('Edit Profile'),
        leadingWidth: 70,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'PAY',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                  letterSpacing: 7,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFormField(
                  keyboardType: TextInputType.number,
                  title: 'Old Pin',
                  controller: oldPinController,
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                // new pin
                CustomFormField(
                  keyboardType: TextInputType.number,
                  title: 'New Pin',
                  controller: newPinController,
                  obsecureText: true,
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  color: kOrangeColor,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-pin-success', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
