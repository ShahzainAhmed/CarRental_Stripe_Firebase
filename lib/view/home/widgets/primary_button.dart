import 'package:bounce/bounce.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final String appRoute;
  const PrimaryButton({super.key, required this.title, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 45.h,
      child: Bounce(
        child: ElevatedButton(
            onPressed: () => Get.toNamed(appRoute),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kPurpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              title,
              style: AppTypography.kMedium14
                  .copyWith(color: AppColors.kWhiteColor),
            )),
      ),
    );
  }
}
