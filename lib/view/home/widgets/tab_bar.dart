import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TabBarWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.kPrimaryColor : AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.kPrimaryColor.withOpacity(0.2)),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTypography.kExpandedRegular.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: isSelected ? AppColors.kWhiteColor : AppColors.kBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}
