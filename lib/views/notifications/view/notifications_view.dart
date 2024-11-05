import 'package:api_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/notifications_card.dart';
import '../controller/notifications_controller.dart';

class NotificationsView extends StatelessWidget {
  final NotificationsController controller = Get.put(NotificationsController());

  NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightGrey,
      appBar: AppBar(
        title: Text('Notifications',
            style: TextStyle(color: Colors.black, fontSize: 16.sp)),
        backgroundColor: ColorManager.lightGrey,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 14.w),
          child: SizedBox(
            height: 44.h,
            width: 44.w,
            child: CircleAvatar(
              radius: 40.r,
              backgroundColor: ColorManager.white,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 14.w),
            child: SizedBox(
              height: 44.h,
              width: 44.w,
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: ColorManager.white,
                child: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              Map<String, List<Map<String, dynamic>>> groupedNotifications = {};
              for (var notification in controller.notifications) {
                var date = notification["date"] as String;
                if (groupedNotifications[date] == null) {
                  groupedNotifications[date] = [];
                }
                groupedNotifications[date]!.add(notification);
              }

              return Expanded(
                child: ListView(
                  children: groupedNotifications.keys.map((date) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          date,
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          children:
                              groupedNotifications[date]!.map((notification) {
                            return NotificationCard(notification: notification);
                          }).toList(),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
