import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class ProfileItemMenu extends StatelessWidget {
  final String iconUrl;
  final String title;
  final Icon? icon;
  final Color? color;
  final VoidCallback? onTap;

  const ProfileItemMenu({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.icon,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
              color: kBlackColor,
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
