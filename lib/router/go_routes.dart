import 'package:flutter/material.dart';
import 'package:fpb/home_screen/home_screen.dart';
import 'package:fpb/onboarding/onboarding.dart';
import 'package:fpb/sign_in/sign_in.dart';
import 'package:fpb/sign_up/signup_page.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      // initial route '/'
      path: SplashScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: 'login',
      path: SignIn.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SignIn();
      },
    ),
    GoRoute(
      name: 'signup',
      path: SignUp.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUp();
      },
    ),
    GoRoute(
      name: 'home',
      path: Home.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
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
      path: SignIn.routeName,
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
  static const signInScreen = SignIn.routeName;
  static const onboardingScreen = OnboardingPage.routeName;
}
