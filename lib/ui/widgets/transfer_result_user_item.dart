import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class TransferResultUsersItem extends StatelessWidget {
  final String imageUrl;

  final String username;
  final bool isSelected;
  const TransferResultUsersItem({
    Key? key,
    required this.imageUrl,
    required this.username,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                // image: '${user.profilePicture}'.isNotEmpty
                //     ? NetworkImage(user.profilePicture!) as ImageProvider
                //     : const AssetImage('assets/icons/photo.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: kGreenColor,
                    size: 20,
                  ),
                ),
              ),
            )),
        const SizedBox(
          height: 15,
        ),
        Text(
          username.toString(),
          // '@${user.username.toString()}',
          style: grayTextStyle.copyWith(
            fontSize: 12,
            fontWeight: regular,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
