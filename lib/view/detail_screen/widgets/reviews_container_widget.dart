import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReviewsContainerWidget extends StatelessWidget {
  final String rating;
  final String reviews;

  const ReviewsContainerWidget(
      {super.key, required this.rating, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: Get.width,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.kGreyColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            horizontalTitleGap: 10,
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.kBlackColor,
              backgroundImage: AssetImage(AppAssets.logo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DreamCars Agency",
                  style: AppTypography.kMedium12,
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    SizedBox(width: 2.w),
                    Text(rating, style: AppTypography.kMedium10),
                    SizedBox(width: 6.w),
                    CircleAvatar(
                        backgroundColor: AppColors.kBlackColor, radius: 1.5.r),
                    SizedBox(width: 6.w),
                    Text(reviews, style: AppTypography.kLight10),
                  ],
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Rental rules", style: AppTypography.kMedium10)],
            ),
          ),
        ],
      ),
    );
  }
}
