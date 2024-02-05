import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class BankItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  // nulable
  //  final bool? isSelected;
  // non nulable
  final bool isSelected;

  const BankItem({
    Key? key,
    this.isSelected = false,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool imageNull = false;
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? kBlueDarkColor : kWhiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // imageNull == false
          //     ? SizedBox(
          //         child: Image.network(
          //           paymentMethod.thumbnail.toString(),
          //           width: 30,
          //         ),
          //       )
          // :
          Image.asset(
            imageUrl,
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '30 Minutes',
                style: grayTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
