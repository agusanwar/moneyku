import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: kRedColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}
