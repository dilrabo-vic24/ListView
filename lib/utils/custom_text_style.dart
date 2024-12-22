import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/app_colors.dart';

Widget customTextStyle({
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? textColor,
}) {
  return Text(
    textDirection: TextDirection.ltr,
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.start,
    text,
    maxLines: 4,
    softWrap: true,
    style: TextStyle(
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: textColor ?? AppColors.blackColor,
      fontFamily: 'Roboto',
    ),
  );
}
