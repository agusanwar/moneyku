import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class TransferAmountScreens extends StatefulWidget {
  const TransferAmountScreens({super.key});

  @override
  State<TransferAmountScreens> createState() => _TopUpAmountScreensState();
}

class _TopUpAmountScreensState extends State<TransferAmountScreens> {
  // controller pin
  final TextEditingController amountController =
      TextEditingController(text: '0');
  // formating number with intl
  @override
  void initState() {
    super.initState();
    // listener / mendengarkan controller
    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            // but error string  add == '' ? '0' :
            text == '' ? '0' : text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    // reflace default 0 to first number to your edit number
    if (amountController.text == '0') {
      amountController.text = '';
    }
    if (amountController.text.length < 8) {
      setState(() {
        amountController.text = amountController.text + number;
      });
    }
  }

  // delete pin
  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        // for number default 0 not empty && but amountcontroler string null
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
    // print(amountController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkSoftBackgraundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                'TOTAL AMOUNT',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 50),
              Align(
                child: SizedBox(
                  width: 200,
                  child: TextFormField(
                    autofocus: true,
                    controller: amountController,
                    enabled: false,
                    cursorColor: kGrayColor,
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 36,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Text(
                        'Rp. ',
                        style: whiteTextStyle.copyWith(
                          fontSize: 36,
                          fontWeight: medium,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGrayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGrayColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 66),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {
                      addAmount('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {
                      addAmount('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {
                      addAmount('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {
                      addAmount('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {
                      addAmount('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {
                      addAmount('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {
                      addAmount('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {
                      addAmount('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {
                      addAmount('9');
                    },
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {
                      addAmount('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deleteAmount();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kRedColor,
                      ),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFilledButton(
                title: 'Continue',
                color: kOrangeColor,
                onPressed: () async {
                  if (await Navigator.pushNamed(context, '/pin') == true) {
                    if (!context.mounted) return;
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/transfer-success', (route) => false);
                  }
                },
              ),
              CustomTextButton(
                title: 'Term & condition',
                color: kDarkSoftBackgraundColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
