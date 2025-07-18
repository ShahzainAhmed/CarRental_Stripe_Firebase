import 'package:animate_do/animate_do.dart';
import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/reviews_container_widget.dart';
import 'package:car_rental_modern/view/detail_screen/widgets/technical_specifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsContainer extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  const DetailsContainer({super.key, required this.largeTilesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.h),
      width: Get.width,
      height: Get.height * 0.5,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(26.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: Text(
                  largeTilesModel.title,
                  style: AppTypography.kBold.copyWith(fontSize: 20.sp),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 1100),
                child: Text(
                  "Car rating: ${largeTilesModel.fullRating}/100",
                  style: AppTypography.kMedium10,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: ReviewsContainerWidget(
                  rating: largeTilesModel.rating,
                  reviews: "${largeTilesModel.reviews} reviews",
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 1300),
                child: Text(
                  "Technical Specifications",
                  style: AppTypography.kBold12,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 55.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: largeTilesModel.myCarSpecsList.length,
                itemBuilder: (context, index) {
                  return FadeInLeft(
                    duration: const Duration(milliseconds: 1000),
                    child: TechnicalSpecificationsWidget(
                      carSpecsModel: largeTilesModel.myCarSpecsList[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24.h),
            Divider(
              color: AppColors.kBlackColor.withOpacity(0.1),
              height: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
