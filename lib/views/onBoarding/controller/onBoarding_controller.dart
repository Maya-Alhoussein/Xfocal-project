import 'package:api_task/views/home_page/view/home_view.dart';
import 'package:get/get.dart';

import '../../../models/onBoarding_model.dart';
import '../../sign_in/view/sing_in_view.dart';

class OnBoardingController extends GetxController {

  final List<OnBoardingModel> pages = [
    OnBoardingModel(
        title: "Welcome to Byte Boutique",
        description: "",
        buttonText: "Get Started",
        imagePath: ["assets/icons/icon1.png","assets/icons/icon2.png","assets/icons/icon4.png","assets/icons/icon3.png"],
    ),
    OnBoardingModel(
        title: "Let's Start Journey",
        description: "Smart, Gorgeous & Fashionable Collection Explored Now",
        buttonText: "Next",
        imagePath: ["assets/icons/icon4.png" , "assets/icons/icon2.png"]
    ),
    OnBoardingModel(
        title: "You Have The Power To",
        description: "There are many beautiful and attractive plants for your room",
        buttonText: "Next",
        imagePath: ["assets/icons/icon2.png"],
    ),
  ];
  var currentIndex = 0.obs;

  void nextPage() {
    if (currentIndex.value < 2) {
      currentIndex.value++;
      update();
    } else {
     Get.to(SignInView());
    }
  }

  void updateIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
