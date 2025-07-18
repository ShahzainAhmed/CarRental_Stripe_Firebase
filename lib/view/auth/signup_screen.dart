import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/routes/app_routes.dart';
import 'package:car_rental_modern/view/home/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isObscure = true;
  bool isConfirmObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kWhiteColor,
            )),
        backgroundColor: AppColors.kPrimaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.carLogo,
              height: 150.h,
              width: 150.w,
              colorFilter: const ColorFilter.mode(
                AppColors.kWhiteColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              "Luxury Car Rental",
              style:
                  AppTypography.kBold22.copyWith(color: AppColors.kWhiteColor),
            ),
            SizedBox(height: 20.h),
            Text(
              "Create an account to book your ride",
              textAlign: TextAlign.center,
              style: AppTypography.kMedium14.copyWith(
                color: AppColors.kLightGreyColor.withAlpha(150),
              ),
            ),
            SizedBox(height: 30.h),

            // Name Field
            TextField(
              controller: nameController,
              style: AppTypography.kMedium14,
              decoration: InputDecoration(
                fillColor: AppColors.kWhiteColor,
                filled: true,
                hintText: 'Enter your name',
                hintStyle: AppTypography.kMedium12,
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Email Field
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: AppTypography.kMedium14,
              decoration: InputDecoration(
                fillColor: AppColors.kWhiteColor,
                filled: true,
                hintText: 'Enter your email',
                hintStyle: AppTypography.kMedium12,
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Password Field
            TextField(
              controller: passwordController,
              obscureText: isObscure,
              style: AppTypography.kMedium14,
              decoration: InputDecoration(
                fillColor: AppColors.kWhiteColor,
                filled: true,
                hintText: 'Enter your password',
                hintStyle: AppTypography.kMedium12,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () => setState(() => isObscure = !isObscure),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Confirm Password Field
            TextField(
              controller: confirmPasswordController,
              obscureText: isConfirmObscure,
              style: AppTypography.kMedium14,
              decoration: InputDecoration(
                fillColor: AppColors.kWhiteColor,
                filled: true,
                hintText: 'Confirm your password',
                hintStyle: AppTypography.kMedium12,
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(
                    isConfirmObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () =>
                      setState(() => isConfirmObscure = !isConfirmObscure),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
            SizedBox(height: 30.h),

            const PrimaryButton(
              title: "Sign Up",
              appRoute: AppRoutes.homeScreen,
            ),
            SizedBox(height: 30.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: AppTypography.kMedium12.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.loginScreen),
                  child: Text(
                    "Login",
                    style: AppTypography.kMedium12,
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
