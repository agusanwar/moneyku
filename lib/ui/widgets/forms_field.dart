import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isShowTile;
  // final Function(String)? onFieldSubmitted;
  const CustomFormField({
    super.key,
    required this.title,
    this.controller,
    this.obsecureText = false,
    this.keyboardType,
    this.isShowTile = true,
    // this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return // Username Input
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTile)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowTile) const SizedBox(height: 8),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: obsecureText,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: !isShowTile
                ? Icon(
                    Icons.search,
                    color: kGrayColor,
                    size: 25,
                  )
                : null,
            hintText: !isShowTile ? title : null,
            hintStyle: blackTextStyle.copyWith(
              fontSize: 13,
              fontWeight: regular,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
