import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/routes/app_pages.dart';
import 'package:car_rental_modern/routes/app_routes.dart';
import 'package:car_rental_modern/view/home/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Luxury \nCar Rental",
              style: AppTypography.kBold44
                  .copyWith(color: AppColors.kWhiteColor, height: 1.2),
            ),
            SizedBox(height: 10.h),
            Text(
              "Rent a luxury car for your travel\nwhenever you want with your device!",
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kWhiteColor.withAlpha(130)),
            ),
            Image.asset(
              AppAssets.onboardingBlack,
              width: Get.width,
              height: 290.h,
              fit: BoxFit.cover,
            ),
            const PrimaryButton(
              title: "Get Started",
              appRoute: AppRoutes.loginScreen,
            )
          ],
        ),
      ),
    );
  }
}
