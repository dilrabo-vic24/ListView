import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/screens/shop_screen.dart';
import 'package:listview_example/presentations/widgets/navigator_button.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/app_images.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class BuyNowCard extends StatelessWidget {
  const BuyNowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.darkGreen, AppColors.lightGreen],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextStyle(
                  text: "Get RM10.00 OFF",
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  textColor: AppColors.whiteColor,
                ),
                customTextStyle(
                  text:
                      "Spen min RM100.00 to get free delivery and promo voucher for your next purchase.",
                  fontSize: 10.sp,
                ),
                NavigatorButton(
                  width: 100.w,
                  height: 25.h,
                  text: "Buy Now",
                  navigateScreen: const ShopScreen(),
                  backgroundColor: AppColors.whiteColor,
                ),
              ],
            ),
          ),
          Image.asset(AppImages.makeUp),
        ],
      ),
    );
  }
}