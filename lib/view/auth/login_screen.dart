import 'package:car_rental_modern/resources/app_assets.dart';
import 'package:car_rental_modern/resources/app_colors.dart';
import 'package:car_rental_modern/resources/app_typography.dart';
import 'package:car_rental_modern/routes/app_routes.dart';
import 'package:car_rental_modern/view/home/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.kPrimaryColor,
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
              "Login to continue booking your ride",
              textAlign: TextAlign.center,
              style: AppTypography.kMedium14.copyWith(
                color: AppColors.kLightGreyColor.withAlpha(150),
              ),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 20),
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
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const PrimaryButton(
              title: "Login",
              appRoute: AppRoutes.homeScreen,
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: AppTypography.kMedium12.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.signupScreen),
                  child: Text(
                    "Sign Up",
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
