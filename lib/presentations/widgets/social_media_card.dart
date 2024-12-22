import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class SocialMediaCard extends StatelessWidget {
  final String iconUrl;
  final String text;
  const SocialMediaCard({
    super.key,
    required this.iconUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.h),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconUrl),
          customTextStyle(text: text, fontWeight: FontWeight.w400),
        ],
      ),
    );
  }
}
