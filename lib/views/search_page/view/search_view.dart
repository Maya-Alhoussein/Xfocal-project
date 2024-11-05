import 'package:api_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/search_controller.dart';

class SearchView extends StatelessWidget {
  final SearchPageController controller = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24.sp,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: controller.clearSearchText,
            child: Text(
              'Cancel',
              style: TextStyle(
                color: ColorManager.primaryColor,
                fontSize: 15.sp,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 14,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                onChanged: controller.updateSearchText,
                decoration: InputDecoration(
                  border : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r),
                    borderSide: BorderSide.none
                  ),
                  hintText: 'Search Your Shirt',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp
                  ),
                  prefixIcon: Image.asset(
                    "assets/icons/search_icon.png",
                    height: 24.h,
                    width: 24.w,
                    scale: 1.5,
                  ),
                  suffixIcon: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      width: 26.h,
                      height: 24.w, // Adjust width as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 1,
                            height: 24,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8.w), // Add some spacing
                          Icon(Icons.mic_none, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Shirt',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.recentSearches.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.access_time, color: Colors.grey),
                      title: Text(
                        controller.recentSearches[index],
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        // Handle recent search item tap (e.g., populate search field or go to search result)
                        controller
                            .updateSearchText(controller.recentSearches[index]);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
