import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class Off50Card extends StatelessWidget {
  const Off50Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 32.w,
      color: AppColors.lightGreen,
      child: customTextStyle(text: "50% OFF", fontSize: 10.sp),
    );
  }
}