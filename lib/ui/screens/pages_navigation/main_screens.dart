import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/screens/pages_navigation/history_screens.dart';
import 'package:moneyku/ui/screens/pages_navigation/home_screens.dart';
import 'package:moneyku/ui/screens/pages_navigation/profile_screens.dart';
import 'package:moneyku/ui/screens/pages_navigation/transaction_screens.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgraundColor,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 15),
        child: Transform.scale(
          scale: 1.2,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: kOrangeColor,
            tooltip: 'Scan QR',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/ic_scan.png',
                  width: 28,
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 0,
        elevation: 0,
        child: BottomNavigationBar(
          onTap: (value) {
            // print(value);
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          backgroundColor: kWhiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: kOrangeColor,
          unselectedItemColor: kGrayColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: orangeTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_home.png',
                width: currentIndex == 0 ? 30 : 22,
                color: currentIndex == 0 ? kOrangeColor : kGrayColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_history.png',
                width: currentIndex == 1 ? 30 : 22,
                color: currentIndex == 1 ? kOrangeColor : kGrayColor,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_history.png',
                width: 20,
                color: Colors.transparent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_statistic.png',
                width: currentIndex == 3 ? 30 : 22,
                color: currentIndex == 3 ? kOrangeColor : kGrayColor,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_profile.png',
                width: currentIndex == 4 ? 30 : 22,
                color: currentIndex == 4 ? kOrangeColor : kGrayColor,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: body(),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomeScreens();
      case 1:
        return const TransactionScreens();
      case 3:
        return HistoryScreens();
      case 4:
        return const ProfileScreens();
      default:
        return const HomeScreens();
    }
  }
}
