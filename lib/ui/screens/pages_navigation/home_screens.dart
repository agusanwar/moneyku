import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moneyku/shared/shared_themes.dart';
import 'package:moneyku/ui/widgets/home_card_info.dart';
import 'package:moneyku/ui/widgets/home_card_item_services.dart';
import 'package:moneyku/ui/widgets/home_more_item.dart';
import 'package:moneyku/ui/widgets/indicator.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  // NOTE : Indicator info
  int currentIndex = 0;

  // NOTE : VISIBILITY for HIDDEN and VIEW data
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgraundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'RP. 20000',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                        letterSpacing: 2,
                        color: kWhiteColor,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kGrayColor.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/icons/ic_discount.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Promo',
                                style: yellowTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: semiBold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            elevation: 0,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: kOrangeColor.withOpacity(0.9),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    color: kOrangeColor,
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          margin: const EdgeInsets.only(bottom: 20, top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: kWhiteColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: kGrayColor,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: kGrayColor,
                                ),
                                suffixIcon: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.sort,
                                    color: kGrayColor,
                                  ),
                                )),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCardItemServices(
                              color: kBlackColor,
                              imageUrl: 'assets/icons/ic_scan.png',
                              title: 'Scan',
                            ),
                            HomeCardItemServices(
                              color: kGreenColor,
                              imageUrl: 'assets/icons/ic_transaction_top.png',
                              title: 'topup',
                              onTap: () {
                                Navigator.pushNamed(context, '/top-up');
                              },
                            ),
                            HomeCardItemServices(
                              color: kRedColor,
                              imageUrl:
                                  'assets/icons/ic_transaction_transfer.png',
                              title: 'Send',
                              onTap: () {
                                Navigator.pushNamed(context, '/transfer');
                              },
                            ),
                            HomeCardItemServices(
                              color: kPurpleColor,
                              imageUrl:
                                  'assets/icons/ic_transaction_cashback.png',
                              title: 'Request',
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: kGraySoftColor.withOpacity(0.9),
                                blurRadius: 24,
                                offset: const Offset(0, 11),
                              ),
                            ],
                          ),
                          child: Builder(
                            builder: (context) {
                              List menuItem = [
                                {
                                  "imageUrl": 'assets/icons/ic_pulsa_data.png',
                                  "title": 'Pulsa & Data',
                                  "color": kBlueAccerColor,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_pln.png',
                                  "title": 'Pln',
                                  "color": kYellowColor,
                                },
                                {
                                  "imageUrl":
                                      'assets/icons/ic_uang_electronic.png',
                                  "title": 'E Money',
                                  "color": kBlueAccer2Color,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_games.png',
                                  "title": 'Games',
                                  "color": kGreenColor,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_pendidikan.png',
                                  "title": 'Pendidikan',
                                  "color": kBlueAccerColor,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_pdam.png',
                                  "title": 'PDAM',
                                  "color": kBlueDarkColor,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_donasi.png',
                                  "title": 'Donasi',
                                  "color": kRedColor,
                                },
                                {
                                  "imageUrl": 'assets/icons/ic_more.png',
                                  "title": 'More',
                                  "color": kBlackColor,
                                },
                              ];
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.0,
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 6,
                                  mainAxisSpacing: 6,
                                ),
                                itemCount: menuItem.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  var item = menuItem[index];
                                  return InkWell(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            item["imageUrl"],
                                            width: 32,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          item["title"],
                                          style: blackTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: medium,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: CarouselSlider(
                    items: const [
                      HomeCardInfo(
                        imageUrl: 'assets/images/img_item.png',
                      ),
                      HomeCardInfo(
                        imageUrl: 'assets/images/img_item2.png',
                      ),
                      HomeCardInfo(
                        imageUrl: 'assets/images/img_item3.png',
                      ),
                      HomeCardInfo(
                        imageUrl: 'assets/images/img_item4.png',
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.85,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      height: MediaQuery.of(context).size.height * 0.16,
                      aspectRatio: 16 / 9,
                      initialPage: currentIndex,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            currentIndex = index;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIndicator(
                      color: currentIndex == 0 ? kOrangeColor : kGrayColor,
                    ),
                    CustomIndicator(
                      color: currentIndex == 1 ? kOrangeColor : kGrayColor,
                    ),
                    CustomIndicator(
                      color: currentIndex == 2 ? kOrangeColor : kGrayColor,
                    ),
                    CustomIndicator(
                      color: currentIndex == 3 ? kOrangeColor : kGrayColor,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // SEND AGAIN
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Text(
                              'Sand Again',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                          // NOTE : Featured Item
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 90,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          margin:
                                              const EdgeInsets.only(bottom: 5),
                                          decoration: BoxDecoration(
                                            color: kLightBackgraundColor,
                                            shape: BoxShape.circle,
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/logo.png'),
                                              // image: '${user.profilePicture}'.isNotEmpty
                                              //     ? NetworkImage(user.profilePicture!) as ImageProvider
                                              //     : const AssetImage('assets/icons/photo.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Name',
                                          style: grayTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: medium,
                                          ),
                                          overflow: TextOverflow.ellipsis,
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
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sliper Item For You
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // FEATURED
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 14,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'More For You',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Find P Pay merchants in your area!',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () => setState(
                                    () => isVisible = !isVisible,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kBlueDarkColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'VIEW ALL',
                                        style: whiteTextStyle.copyWith(
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          HomeMoreItem(
                            imageUrl: 'assets/images/logo.png',
                            title: 'Update Your P Pay App',
                            subTitle:
                                'Effisien waktu anda sehingga lebih\n mudah dalam bertransaksi',
                            color: kYellowColor,
                            // icon: true,
                          ),
                          if (isVisible)
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                HomeMoreItem(
                                  imageUrl: 'assets/images/logo.png',
                                  title: 'Add P Pay App to App',
                                  subTitle:
                                      'Find P Pay merchants in your area!',
                                  color: kRedColor,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                HomeMoreItem(
                                  imageUrl: 'assets/images/logo.png',
                                  title: 'Promo Voucher',
                                  subTitle:
                                      'Find P Pay merchants in your area!',
                                  color: kBlueAccerColor,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                HomeMoreItem(
                                  imageUrl: 'assets/images/logo.png',
                                  title: 'Refer your friend P Pay App',
                                  subTitle:
                                      'Find P Pay merchants in your area!',
                                  color: kBlueDarkColor,
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sliper Item Protection Account
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // FEATURED
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kWhiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 14,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/logo.png',
                                      height: 30,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'MONEY-KU \nPROTECTION',
                                      style: blueTextStyle.copyWith(
                                        fontSize: 16,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kBlueDarkColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Discover',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: medium,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/ic_cards.png',
                                    height: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Money Back \nGuarantee',
                                    style: blueTextStyle.copyWith(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/ic_internet.png',
                                    height: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Secure Data\nPrivacy',
                                    style: blueTextStyle.copyWith(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/ic_support.png',
                                    height: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '24/7 days\nAssistance',
                                    style: blueTextStyle.copyWith(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sliper Item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 40,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
