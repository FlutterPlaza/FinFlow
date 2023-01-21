import 'package:flutter/material.dart';
import 'package:fpb/home_screen/home_screen.dart';
import 'package:fpb/onboarding/onboarding.dart';
import 'package:fpb/sign_in/sign_in.dart';
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
      path: MyHomePage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage();
      },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'details',
      //     builder: (BuildContext context, GoRouterState state) {
      //       return const DetailsScreen();
      //     },
      //   ),
      // ],
    ),
    GoRoute(
      path: SignInPage.routeName,
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
  static const homeScreen = MyHomePage.routeName;
  static const signInScreen = SignInPage.routeName;
  static const onboardingScreen = OnboardingPage.routeName;
}
