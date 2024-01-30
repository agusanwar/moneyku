import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';

class TransctionItemCompleted extends StatelessWidget {
  final String imageUrl;
  final String title;
  final DateTime dateTime;
  final String status;

  const TransctionItemCompleted({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.dateTime,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // check condition image if null in backend
    // bool imageNull = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: color.withOpacity(0.2),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 30,
                  ),
                  // imageNull == true
                  // ? CachedNetworkImage(
                  //     imageUrl:
                  //         transacton.transactionType!.thumbnail!.toString(),
                  //   )
                  // : Image.asset(
                  //     'assets/images/logo.png',
                  //     width: 30,
                  //   ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      dateTime.toString(),
                      // DateFormat('E, d MMM yyyy - HH:mm')
                      //     .format(transacton.createdAt ?? DateTime.now()),
                      style: grayTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Text(
                  status,
                  // formatCurrency(
                  //   transacton.amount ?? 0,
                  //   symbol:
                  //       transacton.transactionType!.action == 'cr' ? '+' : '-',
                  // ),
                  style: blackTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 15,
                    color: kGreenColor,
                    // color: transacton.transactionType!.action == 'cr'
                    //     ? kGreenColor
                    //     : kRedColor,
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
