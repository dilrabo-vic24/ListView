import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/screens/shop_screen.dart';
import 'package:listview_example/presentations/widgets/navigator_button.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/app_images.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class LearnMoreCard extends StatelessWidget {
  final String mainText;
  final String subtext1;
  final String subText2;
  final String buttonText;

  const LearnMoreCard({
    super.key,
    required this.mainText,
    required this.subtext1,
    required this.subText2,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 8.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        color: AppColors.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextStyle(
                text: mainText,
              ),
              SizedBox(
                height: 8.h,
              ),
              customTextStyle(
                text: subtext1,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
              customTextStyle(
                text: subText2,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 8.h,
              ),
              NavigatorButton(
                navigateScreen: const ShopScreen(),
                text: buttonText,
                width: 110.w,
                height: 30.h,
              ),
            ],
          ),
          Image.asset(
            AppImages.image,
            width: 120.w,
            height: 120.h,
          ),
        ],
      ),
    );
  }
}
