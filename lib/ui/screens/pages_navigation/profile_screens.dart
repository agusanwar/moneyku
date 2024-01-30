import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:moneyku/ui/widgets/profile_balance.dart';
import 'package:moneyku/ui/widgets/profile_item_menu.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgraundColor,
      body: ListView(
        // safe area 0
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                color: kOrangeColor,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(top: 80),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  // jika asset image null view dummy or not null call to end point
                                  image: AssetImage(
                                    'assets/images/img_dummy.png',
                                  ),

                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kOrangeColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.check_circle,
                                      color: kGreenColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        // Title User
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              '@name.com',
                              style: whiteTextStyle.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.qr_code,
                                color: kWhiteColor,
                                size: 20,
                              ),
                              label: Row(
                                children: [
                                  Text(
                                    "Show Qr",
                                    style: whiteTextStyle.copyWith(),
                                  ),
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: kWhiteColor,
                                    size: 20,
                                  )
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                foregroundColor:
                                    Theme.of(context).primaryColorDark,
                                side: BorderSide(width: 2, color: kWhiteColor),
                                backgroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Balance user
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  height: 25,
                                ),
                                Text(
                                  'zakiasantika',
                                  style: blackTextStyle.copyWith(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ProfileBalance(
                                  name: "Income",
                                  icon: Icons.arrow_circle_up,
                                  color: kGreenColor,
                                  price: "5000",
                                ),
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: kDarkBackgraundColor,
                                ),
                                ProfileBalance(
                                  name: "Outcome",
                                  icon: Icons.arrow_circle_down,
                                  color: kRedColor,
                                  price: "2000",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        children: [
                          ProfileItemMenu(
                            iconUrl: 'assets/images/logo.png',
                            title: 'Is here to help\nLet`s go',
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: kBlackColor,
                            ),
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Setting',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhiteColor,
                          ),
                          child: Column(
                            children: [
                              ProfileItemMenu(
                                onTap: () async {
                                  if (await Navigator.pushNamed(
                                          context, '/pin') ==
                                      true) {
                                    if (!context.mounted) return;
                                    Navigator.pushNamed(
                                        context, '/profile-edit');
                                  }
                                },
                                iconUrl: 'assets/icons/ic_user.png',
                                title: 'Profile Setting',
                                icon: Icon(
                                  Icons.verified_user,
                                  size: 15,
                                  color: kBlackColor,
                                ),
                                color: kYellowColor,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: kLightBackgraundColor,
                              ),
                              ProfileItemMenu(
                                onTap: () async {
                                  if (await Navigator.pushNamed(
                                          context, '/pin') ==
                                      true) {
                                    if (!context.mounted) return;
                                    Navigator.pushNamed(
                                        context, '/profile-edit-pin');
                                  }
                                },
                                iconUrl: 'assets/icons/ic_my_pin.png',
                                title: 'Security Setting',
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: kBlackColor,
                                ),
                                color: kGrayColor,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: kLightBackgraundColor,
                              ),
                              ProfileItemMenu(
                                iconUrl: 'assets/icons/ic_wallet.png',
                                title: 'E-Wallet Setting',
                                icon: Icon(
                                  Icons.wallet,
                                  size: 15,
                                  color: kWhiteColor,
                                ),
                                color: kBlueColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Help profile for user
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Help',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhiteColor,
                          ),
                          child: Column(
                            children: [
                              ProfileItemMenu(
                                iconUrl: 'assets/icons/ic_my_reward.png',
                                title: 'My Reward',
                                icon: Icon(
                                  Icons.card_membership,
                                  size: 15,
                                  color: kBlackColor,
                                ),
                                color: kGreenColor,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: kLightBackgraundColor,
                              ),
                              ProfileItemMenu(
                                iconUrl: 'assets/icons/ic_help_center.png',
                                title: 'Contact US',
                                icon: Icon(
                                  Icons.headset_mic_outlined,
                                  size: 15,
                                  color: kWhiteColor,
                                ),
                                color: kRedColor,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: kLightBackgraundColor,
                              ),
                              ProfileItemMenu(
                                iconUrl: 'assets/icons/ic_statistic.png',
                                title: 'Terms and Conditions',
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: kBlackColor,
                                ),
                                color: kGrayColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // information user profile
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhiteColor,
                          ),
                          child: Column(
                            children: [
                              ProfileItemMenu(
                                iconUrl: 'assets/icons/ic_travel.png',
                                title: 'Information Aplikasi',
                                icon: Icon(
                                  Icons.info_outline_rounded,
                                  size: 15,
                                  color: kBlackColor,
                                ),
                                color: kYellowColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Versi Aplkasi 1.0.0',
                          style: graydarkTextStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomFilledButton(
                          title: 'Logout',
                          color: kOrangeColor,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
