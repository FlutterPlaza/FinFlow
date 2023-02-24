import 'package:auto_route/annotations.dart';
import 'package:fpb/email_confirmation/email_confirmation_page.dart';
import 'package:fpb/home/view/home_screen.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/onboarding/view/splash_screen.dart';
import 'package:fpb/profile/view/profile_page.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_up/view/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: HomeScreen, children: [
      AutoRoute(page: ProfileScreen),
    ]),
    AutoRoute(page: OnboardingScreen),
    AutoRoute(page: EmailConfirmationScreen),
  ],
)
class $AppRoute {}
