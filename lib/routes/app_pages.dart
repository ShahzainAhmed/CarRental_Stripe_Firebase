import 'package:car_rental_modern/routes/app_routes.dart';
import 'package:car_rental_modern/view/auth/login_screen.dart';
import 'package:car_rental_modern/view/auth/signup_screen.dart';
import 'package:car_rental_modern/view/home/home_screen.dart';
import 'package:car_rental_modern/view/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._(); // private
  static var getPages = [
    GetPage(
      name: AppRoutes.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.signupScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}
