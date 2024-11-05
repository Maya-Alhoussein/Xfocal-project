import 'package:api_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  final Map<String, dynamic> notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        height: 105.h,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  notification["image"],
                  width: 87.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notification["title"],
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    if (notification["subtitle"] != null)
                      Text(notification["subtitle"],
                          style: TextStyle(fontSize: 14.sp, color: Colors.grey,fontWeight: FontWeight.bold)),
                    if (notification["price"] != null)
                      Row(
                        children: [
                          Text(
                            '\$${notification["price"]}',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            '\$${notification["discountPrice"]}',
                            style: TextStyle(fontSize: 14.sp, color: ColorManager.grey,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Text(notification["time"],
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
