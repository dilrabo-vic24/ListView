import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class LoginAndRegister extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color containerColor;
  const LoginAndRegister({
    super.key,
    required this.textColor,
    required this.containerColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customTextStyle(
          text: text,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          textColor: textColor,
        ),
        SizedBox(height: 15.h),
        Container(
          width: 160.w,
          height: 3.h,
          color: containerColor,
        )
      ],
    );
  }
}
