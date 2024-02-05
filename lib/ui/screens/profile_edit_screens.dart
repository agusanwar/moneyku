import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:moneyku/ui/widgets/forms_field.dart';

class ProfileEditScreens extends StatefulWidget {
  const ProfileEditScreens({super.key});

  @override
  State<ProfileEditScreens> createState() => _ProfileEditScreensState();
}

class _ProfileEditScreensState extends State<ProfileEditScreens> {
  // step 1. create variable
  final usernameController = TextEditingController(text: '');
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
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
                // email
                CustomFormField(
                  title: 'Username',
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                // email
                CustomFormField(
                  title: 'Fullname',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                // Password
                CustomFormField(
                  title: 'Email Address',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                // Password
                CustomFormField(
                  title: 'Password',
                  controller: passwordController,
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
                        context, '/profile-edit-success', (route) => false);
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
