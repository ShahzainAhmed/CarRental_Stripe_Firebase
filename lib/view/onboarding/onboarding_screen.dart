import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "Luxury \nCar Rental",
              style: AppTypography.kBold44
                  .copyWith(color: AppColors.kWhiteColor, height: 1.2),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "Rent a luxury car for your travel\nwhenever you want with your device!",
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kWhiteColor.withAlpha(130)),
            ),
          ),
          Image.asset(
            AppAssets.onboardingBlack,
            width: Get.width,
            height: 300.h,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              width: Get.width,
              height: 45.h,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.kPurpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: AppTypography.kMedium14
                        .copyWith(color: AppColors.kWhiteColor),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
