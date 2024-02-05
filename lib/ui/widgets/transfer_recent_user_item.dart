import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class TransferRecentUsersItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  const TransferRecentUsersItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kLightBackgraundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                // image: '${user.profilePicture}'.isNotEmpty
                //     ? NetworkImage(user.profilePicture!) as ImageProvider
                //     : const AssetImage('assets/icons/photo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // user.name.toString().toUpperCase(),
                name.toUpperCase(),
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              Text(
                username,
                // '@${user.username!.toString()}',
                style: grayTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: kGreenColor,
                  size: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style: greenTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
