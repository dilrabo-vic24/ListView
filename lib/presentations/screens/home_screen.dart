import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/screens/shop_screen.dart';
import 'package:listview_example/presentations/widgets/buy_now_card.dart';
import 'package:listview_example/presentations/widgets/learn_more_card.dart';
import 'package:listview_example/presentations/widgets/profile_card_widget.dart';
import 'package:listview_example/presentations/widgets/shocking_sale_product_card.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/app_images.dart';
import 'package:listview_example/utils/custom_text_style.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int selectedItemIndex = 0;

  void onItemTapped(BuildContext context, int index) {
    selectedItemIndex = index;
    if (selectedItemIndex == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ShopScreen()));
      log(selectedItemIndex.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackgroundColor,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, bottom: 20.h, right: 20.w, top: 30.h),
        child: Column(
          children: [
            const ProfileCardWidget(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  LearnMoreCard(
                    mainText: "Trade-in and save ",
                    subtext1: "Enjoy Great unfront saving",
                    subText2: "Enjoy Great unfront saving",
                    buttonText: "Learn More",
                  ),
                  LearnMoreCard(
                    mainText: "Trade-in and save ",
                    subtext1: "Enjoy Great unfront saving",
                    subText2: "Enjoy Great unfront saving",
                    buttonText: "Learn More",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextStyle(
                  text: "Shocking Sale",
                  fontSize: 16.sp,
                ),
                customTextStyle(
                  text: "View All",
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.darkGreen,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ShockingSaleProductCard(
                    imageUrl: AppImages.image1,
                  ),
                  ShockingSaleProductCard(
                    imageUrl: AppImages.image2,
                  ),
                ],
              ),
            ),
            const BuyNowCard()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
        currentIndex: selectedItemIndex,
        selectedItemColor: AppColors.darkGreen,
        onTap: (index) => onItemTapped(context, index),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
