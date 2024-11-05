import 'package:api_task/views/onBoarding/view/onBoarding_view.dart';
import 'package:api_task/views/register_account/view/register_account_view.dart';
import 'package:api_task/views/sign_in/view/sing_in_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/onBoardingView", page: () => OnBoardingView()),
  GetPage(name: "/signInView", page: () =>  SignInView()),
  GetPage(name: "/registerAccountView", page: () =>  RegisterAccountView()),

];
