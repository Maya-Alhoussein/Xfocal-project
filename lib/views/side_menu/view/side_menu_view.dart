import 'package:api_task/core/constants/app_colors.dart';
import 'package:api_task/views/notifications/view/notifications_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class SideMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black, // Dark background
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 80.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Column(
               children: [
                 Container(
                   height: 96.h,
                   width: 96.w,
                   child: CircleAvatar(
                     radius: 40.0.r,
                     child:  Image.asset(
                       'assets/icons/profile.png', // Replace with actual image URL
                     ),
                   ),
                 ),
                 SizedBox(height: 10.h),
                 Text(
                   'Programmer X',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.sp,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ],
             ),
             SizedBox(height: 30.h),
            buildMenuItem(Icons.person_2_outlined, 'Profile',),
            buildMenuItem(Icons.shopping_cart_outlined, 'My Cart'),
            buildMenuItem(Icons.favorite_border, 'Favorite'),
            buildMenuItem(Icons.local_shipping_outlined, 'Orders'),
            GestureDetector(
                onTap: (){Get.to(NotificationsView());},
                child: buildMenuItem(Icons.notifications_none, 'Notifications')),
            buildMenuItem(Icons.settings, 'Settings'),
            Divider(color: Colors.white, thickness: 3, height: 30.h),
            buildMenuItem(Icons.exit_to_app, 'Sign Out', isSignOut: true),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem(IconData icon, String title, {bool isSignOut = false} ) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0.h),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
             SizedBox(width: 20.w),
            Expanded(
              child: Text(
                title,
                style:  TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            if (!isSignOut) const Icon(Icons.chevron_right, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
