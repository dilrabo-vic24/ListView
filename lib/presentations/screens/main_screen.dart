import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/screens/sign_in_screen.dart';
import 'package:listview_example/presentations/widgets/navigator_button.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/app_images.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(children: [
                Positioned(
                    left: -40.w,
                    child: Image.asset(
                      AppImages.mainScreenImage,
                      width: 310.w,
                      height: 310.h,
                    ))
              ]),
            ),
            customTextStyle(
              text: "All your shopping in one App",
              fontSize: 35.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 20.h),
            customTextStyle(
              text:
                  "Sell your devices the smarter, faster way for immediate cash and a cleaner conscience. Sell your devices the smarter, faster way for immediate cash and a cleaner conscience.",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavigatorButton(
                  width: 156.w,
                  text: "Log In",
                  navigateScreen: const SignInScreen(),
                  height: 35.h,
                  backgroundColor: AppColors.darkGreen,
                ),
                NavigatorButton(
                  width: 156.w,
                  text: "Sign Up",
                  navigateScreen: const SignInScreen(),
                  height: 35.h,
                  backgroundColor: AppColors.whiteColor,
                )
              ],
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
