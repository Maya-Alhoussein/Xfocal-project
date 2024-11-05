import 'package:api_task/core/constants/app_colors.dart';
import 'package:api_task/core/constants/app_sizes.dart';
import 'package:api_task/views/onBoarding/controller/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../models/onBoarding_model.dart';
import 'onBoarding_icons_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  final OnBoardingModel model;
  final VoidCallback onTap;

  OnBoardingWidget({
    super.key,
    required this.model,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      init: OnBoardingController(),
      assignId: true,
      builder: (logic) {
        return Stack(
          children: [
            onBoardingIcons(controller.currentIndex.value),
            Positioned(
                top: 328.h,
                left: 20.w,
                right: 20.w,
                child: Text(
                  controller.pages[controller.currentIndex.value].title,
                  style: TextStyle(
                    fontSize: AppSize.xLargeFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
            Positioned(
                top: 419.h,
                left: 28.w,
                child: controller.currentIndex.value == 0
                    ? Padding(
                        padding: EdgeInsets.only(left: 80.w),
                        child: Image.asset(
                          "assets/icons/img.png",
                          height: 18.h,
                          width: 134.w,
                        ),
                      )
                    : SizedBox(
                        height: 48.h,
                        width: 312.w,
                        child: Text(
                          textAlign: TextAlign.center,
                          controller.pages[controller.currentIndex.value]
                              .description,
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
            Positioned(
                bottom: 200.h,
                left: 130.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.pages.length,
                    (index) => Container(
                      margin: const EdgeInsets.all(4),
                      width: controller.currentIndex.value == index ? 42 : 28,
                      height: controller.currentIndex.value == index ? 10 : 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: controller.currentIndex.value == index
                            ? ColorManager.white
                            : ColorManager.primaryColor,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 32.h),
            Positioned(
              bottom: 26.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                    height: 50.h,
                    width: 320.w,
                    child: ElevatedButton(
                        onPressed: onTap,
                        child: Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14.sp),
                            controller.pages[controller.currentIndex.value]
                                .buttonText))),
              ),
            ),
          ],
        );
      },
    );
  }
}
