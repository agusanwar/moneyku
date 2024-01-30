import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class HomeFeaturedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color color;
  final VoidCallback? onTap;

  const HomeFeaturedItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 55,
            height: 55,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kLightBackgraundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kWhiteColor.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Image.asset(
                      imageUrl,
                      width: 27,
                      color: color,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
