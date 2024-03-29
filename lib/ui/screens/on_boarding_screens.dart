import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/screens/sign_in_screens.dart';
import 'package:moneyku/ui/screens/sign_up_screens.dart';
import 'package:moneyku/ui/widgets/buttons.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  int currentIndex = 0;
  // set slide contoller
  CarouselController carouselController = CarouselController();

  // List data
  List<String> title = [
    'Your Started\n Finalcial Money today',
    'Build from \n Zero to Freedom',
    'Start to \n Goal Together'
  ];
  List<String> subTitle = [
    'Our system will make \n your transactions comfortable',
    'Be professional in \n every transaction',
    'provide access and convenience in \n every feature of the application',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'MONEY-KU',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      letterSpacing: 4,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    subTitle[currentIndex],
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          CarouselSlider(
            items: [
              Lottie.asset(
                'assets/lotties/on-boarding1.json',
                height: 330,
              ),
              Lottie.asset(
                'assets/lotties/on-boarding3.json',
                height: 330,
              ),
              Lottie.asset(
                'assets/lotties/on-boarding2.json',
                height: 330,
              ),
            ],
            options: CarouselOptions(
              height: 330,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              // set current index
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            carouselController: carouselController,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 12,
                width: 12,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == 0 ? kOrangeColor : kGrayColor,
                ),
              ),
              Container(
                height: 12,
                width: 12,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == 1 ? kOrangeColor : kGrayColor,
                ),
              ),
              Container(
                height: 12,
                width: 12,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == 2 ? kOrangeColor : kGrayColor,
                ),
              ),
            ],
          ),
          currentIndex == 2
              ? Column(
                  children: [
                    CustomFilledButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      title: 'Get Started',
                      color: kOrangeColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreens(),
                          ),
                        );
                      },
                    ),
                    CustomFilledButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      title: "Sign In",
                      color: kWhiteColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreens(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              : CustomFilledButton(
                  width: MediaQuery.of(context).size.width * 0.8,
                  title: 'Next',
                  color: kOrangeColor,
                  onPressed: () {
                    carouselController.nextPage();
                  },
                ),
        ],
      ),
    );
  }
}
