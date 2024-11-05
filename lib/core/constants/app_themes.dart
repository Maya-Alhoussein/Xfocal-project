import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class Themes {
  // light theme
  static final lightTheme = ThemeData(
    fontFamily: 'Raleway',
    primaryColorLight: ColorManager.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorManager.white,
    useMaterial3: true,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        foregroundColor: ColorManager.primaryColor,
      ),
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //
    //     style: ElevatedButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(14.0)),
    //         textStyle: const TextStyle(fontWeight: FontWeight.bold),
    //     )),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFF3A3A3A),
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: ColorManager.primaryColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: ColorManager.primaryColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: ColorManager.grey,
      filled: true,
        fillColor: ColorManager.lightGrey,
        hintStyle: TextStyle(
            color: const Color(0xFF6A6A6A),
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
        border:
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none
            )),

  );

  // dark theme
  static final darkTheme = ThemeData(
    fontFamily: 'Raleway',
    primaryColorLight: ColorManager.primaryColor,
    primaryColorDark: ColorManager.primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF3A3A3A),
    useMaterial3: true,
    primaryTextTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 30,
            color: ColorManager.white,
            fontWeight: FontWeight.bold)),
    datePickerTheme: const DatePickerThemeData(
        dayStyle: TextStyle(
          color: Colors.white, // Change this to your desired color
        ),
        rangeSelectionBackgroundColor: ColorManager.primaryColor,
        headerBackgroundColor: ColorManager.primaryColor,
        backgroundColor: Color(0xFF3A3A3A)),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        foregroundColor: ColorManager.primaryColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: ColorManager.lightGrey,
        labelStyle: const TextStyle(
            color: Color(0xFF6A6A6A),
            fontWeight: FontWeight.w500,
            fontSize: 14),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            foregroundColor: ColorManager.white,
            shape: const StadiumBorder(),
            backgroundColor: ColorManager.primaryColor)),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xFF3A3A3A),
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: ColorManager.primaryColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: ColorManager.primaryColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    //fontFamily: darkThemeFont,
    // switchTheme: SwitchThemeData(
    //   trackColor: MaterialStateProperty.resolveWith<Color>(
    //       (states) => const Color(0xFF5c9a9e)),
    // ),
  );

// colors
}
