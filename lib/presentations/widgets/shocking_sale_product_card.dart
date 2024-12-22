import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/widgets/off_50_card.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class ShockingSaleProductCard extends StatelessWidget {
  final String imageUrl;
  const ShockingSaleProductCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(imageUrl),
          ),
          Positioned(
            left: 100.w,
            child: const Off50Card(),
          ),
          Positioned(
            top: 140.h,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                color: AppColors.blackColor.withOpacity(0.5),
              ),
              width: 180.w,
              height: 40.h,
            ),
          ),
          Positioned(
            top: 150.h,
            left: 50.w,
            child: customTextStyle(
                text: "15K Sold Out", textColor: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
