import 'package:animate_do/animate_do.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: AppColors.kPrimaryColor,
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h, bottom: 20.h),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.person_rounded,
                  color: AppColors.kWhiteColor,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good to see you",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kWhiteColor.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Shahzain Ahmed",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.location_on,
                  color: AppColors.kWhiteColor,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                FadeInRight(
                  duration: const Duration(milliseconds: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Location",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kWhiteColor.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "California, USA",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
