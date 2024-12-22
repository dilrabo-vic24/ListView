import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/custom_text_style.dart';

// ignore: must_be_immutable
class NavigatorButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Widget navigateScreen;
  Color? backgroundColor;

  NavigatorButton({
    super.key,
    required this.width,
    required this.text,
    required this.navigateScreen,
    this.backgroundColor,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5.r,
            ),
          ),
        ),
        minimumSize: Size(width, height),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigateScreen,
          ),
        );
      },
      child: customTextStyle(
        text: text,
        fontSize: 12.sp,
      ),
    );
  }
}
