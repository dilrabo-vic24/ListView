import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/app_images.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextStyle(
              text: "Welcome Back!",
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
            customTextStyle(
              text: "Rostam Sadiqi",
            ),
          ],
        ),
        Image.asset(AppImages.profileImage)
      ],
    );
  }
}