import 'package:api_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/onBoarding_widget.dart';
import '../controller/onBoarding_controller.dart';

class OnBoardingView extends StatelessWidget {
  final OnBoardingController controller = Get.put(OnBoardingController());

  OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: controller.pages.length,
              onPageChanged: (index) {
                controller.updateIndex(index);
              },
              itemBuilder: (context, index) {
                return OnBoardingWidget(
                  model: controller.pages[index],
                  onTap: controller.nextPage,
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
