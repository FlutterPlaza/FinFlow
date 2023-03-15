import 'package:auto_route/annotations.dart';
import 'package:fpb/email_confirmation/email_confirmation.dart';
import 'package:fpb/forgot_password_flow/create_new_password.dart';
import 'package:fpb/forgot_password_flow/forgot_password.dart';
import 'package:fpb/forgot_password_flow/new_password_success.dart';
import 'package:fpb/home/view/home_screen.dart';
import 'package:fpb/latest_activities/view/latest_activities_screen.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/onboarding/view/splash_screen.dart';
import 'package:fpb/phone_number_confirmation/view/phone_number_confirmation.dart';
import 'package:fpb/profile/view/profile_page.dart';
import 'package:fpb/qr_code_screen/view/qr_code_screen.dart';
import 'package:fpb/savings/save_money_with_bucket/save_money_with_bucket.dart';
import 'package:fpb/savings/view/savings_page.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_up/view/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: PhoneNumberConfirmationScreen),
    AutoRoute(page: EmailConfirmationScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: SaveMoneyScreen),
    AutoRoute(page: SavingsScreen),
    AutoRoute(page: NewPasswordSuccessScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: CreateNewPasswordScreen),
    AutoRoute(
      name: 'HomeRouter',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
        ),
      ],
    ),
    AutoRoute(
      path: 'latestActivities',
      page: LatestActivitiesPage,
    ),
    AutoRoute(
      page: QrCodeScreen,
    ),
    AutoRoute(page: OnboardingScreen),
  ],
)
class $AppRoute {}
