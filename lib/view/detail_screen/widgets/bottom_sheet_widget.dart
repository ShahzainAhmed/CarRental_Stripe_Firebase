import 'package:bounce/bounce.dart';
import 'package:car_rental_modern/models/large_tiles_model.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/services/stripe_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  final LargeTilesModel largeTilesModel;
  final int price;
  const BottomSheetWidget(
      {super.key, required this.price, required this.largeTilesModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SizedBox(
        height: Get.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("from", style: AppTypography.kLight10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$$price',
                        style: AppTypography.kMedium24
                            .copyWith(color: AppColors.kPrimaryColor),
                      ),
                      TextSpan(
                        text: ' / day',
                        style: AppTypography.kLight10
                            .copyWith(color: AppColors.kPrimaryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Bounce(
              onTap: () => StripeService.instance.makePayment(largeTilesModel),
              child: Container(
                height: 46.h,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: AppColors.kPrimaryColor),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: AppTypography.kMedium14
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
