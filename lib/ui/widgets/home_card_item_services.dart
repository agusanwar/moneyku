import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class HomeCardItemServices extends StatelessWidget {
  final Color color;
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeCardItemServices({
    super.key,
    required this.color,
    required this.imageUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kWhiteColor.withOpacity(0.9),
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 20,
                color: color,
              ),
            ),
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
