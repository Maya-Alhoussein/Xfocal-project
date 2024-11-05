import 'package:api_task/core/constants/app_colors.dart';
import 'package:api_task/core/constants/app_sizes.dart';
import 'package:api_task/views/home_page/view/home_view.dart';
import 'package:api_task/views/register_account/view/register_account_view.dart';
import 'package:api_task/views/sign_in/controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            Positioned(
              top: 66,
              child: Container(
                height: 44.h,
                width: 44.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    color: ColorManager.lightGrey),
                child: IconButton(
                  icon: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.black)),
                  onPressed: () => Get.back(),
                ),
              ),
            ),
            Positioned(
              top: 121,
              left: 74.w,
              child: Text(
                'Hello Again!',
                style: TextStyle(
                    fontSize: AppSize.xLargeFontSize,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 167,
              right: 10.w,
              left: 10.w,
              child: Text(
                'Fill your details or continue with social media',
                style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: AppSize.medFontSize,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 245,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(
                        color: ColorManager.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                  SizedBox(height: AppSize.m),
                  SizedBox(
                    height: 48,
                    width: 335.w,
                    child: TextFormField(
                      controller: controller.emailController,
                      decoration:
                          const InputDecoration(hintText: 'xyz@gmail.com'),
                    ),
                  ),
                  SizedBox(height: AppSize.xl.h),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: ColorManager.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Obx(
                    () => SizedBox(
                      height: 48,
                      width: 325.w,
                      child: TextFormField(
                        controller: controller.passwordController,
                        obscureText: controller.isPasswordHidden.value,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: controller.togglePasswordVisibility,
                              icon: controller.isPasswordHidden.value
                                  ? const Icon(Icons.visibility_off_outlined)
                                  : const Icon(Icons.visibility_outlined)),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 8.0.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Recovery Password',
                        style: TextStyle(color: Color(0xFF707B81)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Obx(() => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(
                          color: ColorManager.primaryColor,
                        ))
                      : SizedBox(
                          height: 50,
                          width: 315.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.primaryColor,
                              foregroundColor: ColorManager.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            onPressed: () {
                              controller.login(controller.emailController.text,
                                  controller.passwordController.text);
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  SizedBox(height: AppSize.l.h),
                  SizedBox(
                    height: 50,
                    width: 315.w,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Add Google sign-in functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.white,
                        foregroundColor: ColorManager.black,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      icon: Image.asset(
                        'assets/icons/google_icon.png',
                        // Replace with your Google icon asset
                        height: 24,
                        width: 24,
                      ),
                      label: Text(
                        'Sign In With Google',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 770,
              left: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User?',
                    style: TextStyle(
                        color: ColorManager.black.withOpacity(0.8),
                        fontSize: 16.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(RegisterAccountView());
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: ColorManager.black.withOpacity(0.9),
                          fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
