import 'package:api_task/routes.dart';
import 'package:api_task/views/onBoarding/view/onBoarding_view.dart';
import 'package:api_task/views/sign_in/view/sing_in_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'binding/initial_binding.dart';
import 'core/class/my_translation.dart';
import 'core/class/routes.dart';
import 'core/constants/app_themes.dart';
import 'core/services/my_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
  MyService;
  await initialService();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBindings(),
          getPages: routes,
          initialRoute: Routes.onBoarding,
          translations: MyTranslation(),
          darkTheme: Themes.darkTheme,
          theme: Themes.lightTheme,
          // themeMode: controller.isDarkMode.value ? ThemeMode.dark : ThemeMode
          //     .light,
          locale: const Locale('en', 'ar'),
          home: OnBoardingView(),
        );
      },
    );
  }
}
