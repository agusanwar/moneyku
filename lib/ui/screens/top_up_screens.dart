import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/screens/top_up_amount.dart';
import 'package:moneyku/ui/widgets/bank_item.dart';
import 'package:moneyku/ui/widgets/buttons.dart';

class TopUpScreens extends StatelessWidget {
  const TopUpScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: kLightBackgraundColor,
        title: Text(
          'Top Up',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_circle_left_rounded,
            color: kOrangeColor,
            size: 30,
          ),
        ),
        leadingWidth: 80,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How can you top up E PAY Balanca',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: Icon(
                      Icons.question_mark,
                      color: kBlueDarkColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'My Wallet Card',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kWhiteColor,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/ic_plus_circle.png',
                          color: kOrangeColor,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "12221222",
                          // state.user.cardNumber!.replaceAllMapped(
                          //     RegExp(r".{4}"),
                          //     (match) => "${match.group(0)} "),
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Angelita',
                          // state.user.name!.toUpperCase().toString(),
                          style: blackTextStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Bank Transfer',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Column(
                children: [
                  BankItem(
                    imageUrl: 'assets/images/logo.png',
                    title: 'BANK BRI',
                    isSelected: true,
                  ),
                  BankItem(
                    imageUrl: 'assets/images/logo.png',
                    title: 'BANK BCA',
                  ),
                  BankItem(
                    imageUrl: 'assets/images/logo.png',
                    title: 'BANK BNI',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Other Transfer',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const BankItem(
                imageUrl: 'assets/images/logo.png',
                title: 'ONE CLICK',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomFilledButton(
                title: 'Continue',
                color: kOrangeColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TopUpAmountScreens(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
