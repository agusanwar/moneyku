import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class HomeMoreItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final Color color;
  final bool icon;
  final VoidCallback? onTap;

  const HomeMoreItem({
    Key? key,
    // constuctor
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.color,
    this.icon = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                ),
                child: Image.asset(
                  imageUrl,
                  width: 50,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subTitle,
                    style: blackTextStyle.copyWith(
                      fontSize: 13,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: kBlueColor,
                radius: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
