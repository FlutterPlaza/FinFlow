import 'package:auto_route/annotations.dart';
import 'package:fpb/contact_us/view/contact_us_screen.dart';
import 'package:fpb/contact_us/view/contact_us_success_screen.dart';
import 'package:fpb/authentication_with_phone_number/views/create_password_phone_signup_screen.dart';
import 'package:fpb/home/view/home_screen.dart';
import 'package:fpb/latest_activities/view/latest_activities_screen.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/onboarding/view/splash_screen.dart';
import 'package:fpb/phone_number_confirmation/view/phone_number_confirmation.dart';
import 'package:fpb/profile/view/profile_page.dart';
import 'package:fpb/qr_code_screen/view/qr_code_screen.dart';
import 'package:fpb/savings/view/savings_page.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_up/view/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: QrCodeScreen),
    AutoRoute(
      page: SignUpScreen,
      children: [
        AutoRoute(page: PhoneNumberConfirmationScreen),
        AutoRoute(page: CreateNewPasswordPhoneSignupScreen),
      ],
    ),
    AutoRoute(
      name: 'HomeRouter',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: 'savings',
          page: SavingsPage,
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
        ),
        AutoRoute(
          path: 'latestActivities',
          page: LatestActivitiesPage,
        ),
      ],
    ),
    AutoRoute(page: OnboardingScreen),
    AutoRoute(
      page: ContactUsScreen,
    ),
    AutoRoute(
      page: ContactUsSuccessScreen,
    )
  ],
)
class $AppRoute {}
