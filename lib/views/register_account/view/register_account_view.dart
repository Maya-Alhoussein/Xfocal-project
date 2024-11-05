import 'package:api_task/core/constants/app_colors.dart';
import 'package:api_task/views/register_account/controller/register_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_sizes.dart';
import '../../sign_in/view/sing_in_view.dart';

class RegisterAccountView extends StatelessWidget {
  RegisterAccountView({super.key});

  final RegisterAccountController controller =
      Get.put(RegisterAccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              // Back Button
              Container(
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
              SizedBox(height: 15.h),
              // Title
              Center(
                child: Text(
                  'Register Account',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              // Subtitle
              Text(
                'Fill your details or continue with social media',
                style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: AppSize.medFontSize,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              Text(
                "Your name",
                style: TextStyle(fontSize: 16.sp, color: ColorManager.black),
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'xxxxxxxx',
                ),
                controller: controller.nameController,
              ),
              SizedBox(height: 20.h),
              Text(
                "Email Address",
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xFF1A2530)),
              ),
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hintText: 'xyz@gmail.com',
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Password",
                style: TextStyle(fontSize: 16.sp, color: ColorManager.black),
              ),
              Obx(
                () => TextField(
                  controller: controller.passwordController,
                  obscureText: controller.isPasswordHidden.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(controller.isPasswordHidden.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: controller.togglePasswordVisibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              // Sign Up Button
              Obx(() => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: ColorManager.primaryColor,
                    ))
                  : SizedBox(
                      width: double.infinity,
                      height: 40.h,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.register(
                              controller.nameController.text,
                              controller.emailController.text,
                              controller.passwordController.text);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 40.h,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/icons/google_icon.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                  label: Text(
                    'Sign Up With Google',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have Account? ',
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignInView());
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
