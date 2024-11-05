import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../views/onBoarding/controller/onBoarding_controller.dart';

OnBoardingController controller = Get.put(OnBoardingController());

Widget onBoardingIcons(int currentIndex) {
  if (currentIndex == 0) {
    return Stack(
      children: [
        Positioned(
          top: 106.h,
          left: 59.w,
          child: Image.asset(
            controller.pages[0].imagePath[0],
            height: 27.h,
            width: 30.w,
          ),
        ),
        Positioned(
          top: 165.h,
          left: 259.w,
          child: Image.asset(
            controller.pages[0].imagePath[1],
            height: 45.h,
            width: 45.w,
            color: Colors.grey,
          ),
        ),
        Positioned(
          bottom: 150.h,
          right: 40.w,
          child: Image.asset(
            controller.pages[0].imagePath[2],
            height: 70.h,
            width: 100.w,
            color: Colors.grey,
          ),
        ),
        Positioned(
          bottom: 100.h,
          left: 40.w,
          child: Image.asset(
            controller.pages[0].imagePath[3],
            height: 70.h,
            width: 100.w,
            color: Colors.grey,
          ),
        ),

      ],
    );
  } else if (currentIndex == 1) {
    return Stack(
      children: [
        Positioned(
          top: 116.h,
          left: 23.31.w,
          child: Image.asset(
            controller.pages[1].imagePath[0],
            height: 54.h,
            width: 90.w,
          ),
        ),
        Positioned(
          top: 113.h,
          left: 290.w,
          child: Image.asset(
            controller.pages[1].imagePath[1],
            height: 45.h,
            width: 45.w,
          ),
        ),
      ],
    );
  } else {
    return Positioned(
      top: 108.h,
      left: 52.w,
      child: Image.asset(
        controller.pages[2].imagePath[0],
        height: 77.h,
        width: 77.w,
      ),
    );
  }
}

