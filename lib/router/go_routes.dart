import 'package:flutter/material.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/home/home_screen.dart';
import 'package:fpb/onboarding/onboarding.dart';
import 'package:fpb/sign_in/sign_in.dart';
import 'package:fpb/sign_up/view/signup_page.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      // initial route '/'
      path: SplashScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: 'login',
      path: SignInScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
    ),
    GoRoute(
      name: 'signup',
      path: SignUpScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpBody();
      },
    ),
    GoRoute(
      name: 'home',
      path: Home.routeName,
      builder: (BuildContext context, GoRouterState state) {
        final user = state.extra as User;
        return Home(user: state.extra as User);
      },
    ),
    GoRoute(
      path: SignInScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInBody();
      },
    ),
    GoRoute(
      path: OnboardingPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingPage();
      },
    ),
  ],
);

class GoNames {
  static const splashScreen = SplashScreen.routeName;
  static const homeScreen = Home.routeName;
  static const signInScreen = SignInScreen.routeName;
  static const onboardingScreen = OnboardingPage.routeName;
}
