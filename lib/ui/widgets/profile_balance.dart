import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class ProfileBalance extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  final String price;
  const ProfileBalance({
    super.key,
    required this.name,
    required this.icon,
    required this.color,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              icon,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(),
                ),
                Text(
                  price,
                  style: greenTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    color: color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
