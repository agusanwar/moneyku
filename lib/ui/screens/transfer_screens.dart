import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/screens/transfer_amount_screens.dart';
import 'package:moneyku/ui/widgets/buttons.dart';
import 'package:moneyku/ui/widgets/forms_field.dart';
import 'package:moneyku/ui/widgets/transfer_recent_user_item.dart';
import 'package:moneyku/ui/widgets/transfer_result_user_item.dart';

class TransferScreens extends StatelessWidget {
  const TransferScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kLightBackgraundColor,
        title: Text(
          'Transfer',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_circle_left_rounded,
            color: kOrangeColor,
            size: 30,
          ),
        ),
        leadingWidth: 80,
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: IconButton(
                tooltip: 'Question',
                onPressed: () => {},
                icon: Icon(
                  Icons.question_mark_sharp,
                  color: kGrayColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Transfer',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomFormField(
                  title: 'Find By Username / Phone Number',
                  isShowTile: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                buildResultUsers(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: CustomFilledButton(
            onPressed: () {
              Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => const TransferAmountScreens(),
                  )));
            },
            title: 'Continue',
            color: kOrangeColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Column(
            children: [
              TransferRecentUsersItem(
                imageUrl: 'assets/images/logo.png',
                name: 'angelita',
                username: '@angelita',
              ),
              TransferRecentUsersItem(
                imageUrl: 'assets/images/logo.png',
                name: 'angelita',
                username: '@angelita',
                isVerified: true,
              ),
              TransferRecentUsersItem(
                imageUrl: 'assets/images/logo.png',
                name: 'angelita',
                username: '@angelita',
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildResultUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceAround,
            runSpacing: 24,
            spacing: 24,
            children: [
              TransferResultUsersItem(
                imageUrl: 'assets/images/logo.png',
                username: '@angelita',
              ),
              TransferResultUsersItem(
                imageUrl: 'assets/images/logo.png',
                username: '@angelita',
              ),
              TransferResultUsersItem(
                imageUrl: 'assets/images/logo.png',
                username: '@angelita',
              ),
              TransferResultUsersItem(
                imageUrl: 'assets/images/logo.png',
                username: '@angelita',
              ),
              TransferResultUsersItem(
                imageUrl: 'assets/images/logo.png',
                username: '@angelita',
              ),
            ],
          )
        ],
      ),
    );
  }
}
