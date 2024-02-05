import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/buttons.dart';

class PinScreens extends StatefulWidget {
  const PinScreens({super.key});

  @override
  State<PinScreens> createState() => _PinScreensState();
}

class _PinScreensState extends State<PinScreens> {
  // controller pin
  final pinController = TextEditingController(text: '');

  // cunsome API 1. get pin by user model
  String pin = '';

  // cunsome API 4. set warning PIN in Field
  bool isError = false;

  // condtition add pin max 6
  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
    if (pinController.text == "123456") {
      Navigator.pop(context, true);
    }
    // // cek jika pin lenght sudah 6 digit
    // if (pinController.text.length == 6 && pinController.text == '123123') {
    //   if (pinController.text == pin) {
    //     Navigator.pop(context, true);
    //   } else {
    //     // 5. warning error pin in field
    //     setState(() {
    //       isError = true;
    //     });
    //     showCustomSnackbar(
    //         context, 'PIN yang anda masukan salah, silahkan coba lagi');
    //   }
    // }
    // print(pinController.text);
  }

  // delete pin
  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        isError = false;
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
    // print(pinController.text);
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
              Text(
                'SET PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: 200,
                child: TextFormField(
                  autofocus: true,
                  controller: pinController,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  obscuringCharacter: '*',
                  enabled: false,
                  cursorColor: kGrayColor,
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 36,
                    letterSpacing: 17,
                  ),
                  decoration: InputDecoration(
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
              const SizedBox(height: 66),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
