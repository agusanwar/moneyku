import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/transaction_item_completed.dart';

class TransactionScreens extends StatefulWidget {
  const TransactionScreens({super.key});

  @override
  State<TransactionScreens> createState() => _TransactionScreensState();
}

class _TransactionScreensState extends State<TransactionScreens>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  late bool dataFacted = false;
  @override
  initState() {
    tabController = TabController(length: 2, vsync: this);

    Timer(const Duration(seconds: 2), () {
      setState(() {
        dataFacted = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgraundColor,
      appBar: AppBar(
        title: const Text(
          'Transaction History',
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              color: kOrangeColor.withOpacity(0.1),
            ),
            child: TabBar(
              labelColor: kWhiteColor,
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: medium,
              ),
              unselectedLabelColor: kOrangeColor,
              unselectedLabelStyle: TextStyle(
                fontSize: 18,
                fontWeight: semiBold,
              ),
              controller: tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25), // Creates border
                color: kOrangeColor,
              ),
              tabs: const [
                Tab(
                  text: "In Progres",
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.asset(
                            'assets/lotties/lottie_notfound.json',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Center(
                    child: Column(
                      children: [
                        TransctionItemCompleted(
                          imageUrl: 'assets/images/logo.png',
                          title: 'Top Up',
                          dateTime: DateTime.now(),
                          status: 'Active',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
