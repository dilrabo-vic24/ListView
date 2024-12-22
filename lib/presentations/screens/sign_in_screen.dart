import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listview_example/presentations/screens/home_screen.dart';
import 'package:listview_example/presentations/widgets/login_and_register.dart';
import 'package:listview_example/presentations/widgets/social_media_card.dart';
import 'package:listview_example/utils/app_colors.dart';
import 'package:listview_example/utils/app_icons.dart';
import 'package:listview_example/utils/custom_text_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  bool isPasswordVisible = false;
  bool isTicked = false;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100.h,
              color: AppColors.darkGreen,
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        LoginAndRegister(
                          containerColor: AppColors.darkGreen,
                          text: "Login",
                          textColor: AppColors.darkGreen,
                        ),
                        LoginAndRegister(
                          containerColor: AppColors.greyBackgroundColor,
                          text: "Register",
                          textColor: AppColors.blackColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    customTextStyle(text: "Sign in", fontSize: 18.sp),
                    SizedBox(height: 10.h),
                    customTextStyle(
                      text: "Welcome back! Don’t have an account?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    customTextStyle(
                      text: "Sign Up",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.darkGreen,
                    ),
                    SizedBox(height: 30.h),
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.h),
                        ),
                        border: const OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.h),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter username";
                        }
                        if (value.length < 5) {
                          return "Username must be 5 character at least";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15.h),
                    TextFormField(
                      controller: passwordController,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: "Password",
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.h),
                        ),
                        border: const OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.h),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter password";
                        }
                        if (value.length < 5) {
                          return "Password must be 5 character at least";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30.h),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log("${formKey.currentContext}");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkGreen,
                        minimumSize: Size(double.infinity, 40.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: customTextStyle(
                          text: "Login", textColor: AppColors.whiteColor),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTicked = !isTicked;
                                });
                              },
                              child: Container(
                                width: 22.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  color: isTicked
                                      ? AppColors.darkGreen
                                      : AppColors.whiteColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7.r)),
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2.0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: AppColors.whiteColor,
                                  size: 18.w,
                                ),
                              ),
                            ),
                            customTextStyle(
                                text: "Remember Me",
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        customTextStyle(
                          text: "Forgot password?",
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.darkGreen,
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 2.h,
                          width: 150.w,
                        ),
                        customTextStyle(
                          text: "OR",
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.darkGreen,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 2.h,
                          width: 150.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    const SocialMediaCard(
                      iconUrl: AppIcons.googleIcon,
                      text: "Log In with Google",
                    ),
                    SizedBox(height: 20.h),
                    const SocialMediaCard(
                      iconUrl: AppIcons.appleIcon,
                      text: "Log In with Apple ",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
