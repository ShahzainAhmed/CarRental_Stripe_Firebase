import 'package:car_rental_modern/resources/app_constants.dart';
import 'package:car_rental_modern/routes/app_pages.dart';
import 'package:car_rental_modern/routes/app_routes.dart';
import 'package:car_rental_modern/view/auth/login_screen.dart';
import 'package:car_rental_modern/view/home/home_screen.dart';
import 'package:car_rental_modern/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = AppConstants.stripePulishableKey;
  Stripe.merchantIdentifier = 'Shahzain Ahmed';
  await Stripe.instance.applySettings();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: "Britanica",
            bottomSheetTheme:
                const BottomSheetThemeData(backgroundColor: Colors.transparent),
          ),
          getPages: AppPages.getPages,
          initialRoute: AppRoutes.onboardingScreen,
        );
      },
    );
  }
}
