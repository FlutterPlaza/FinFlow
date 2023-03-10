// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../core/domain/user.dart' as _i11;
import '../home/view/home_screen.dart' as _i4;
import '../latest_activities/view/latest_activities_screen.dart' as _i5;
import '../onboarding/view/onboarding_screens.dart' as _i7;
import '../onboarding/view/splash_screen.dart' as _i1;
import '../profile/view/profile_page.dart' as _i8;
import '../qr_code_screen/view/qr_code_screen.dart' as _i6;
import '../home/view/home_screen.dart' as _i5;
import '../latest_activities/view/latest_activities_screen.dart' as _i8;
import '../savings/save_money_with_bucket/save_money_with_bucket.dart' as _i4;
import '../sign_in/view/sign_in_page.dart' as _i2;
import '../sign_up/view/signup_page.dart' as _i3;

class AppRoute extends _i9.RootStackRouter {
  AppRoute([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpScreen(),
      );
    },
    SaveMoneyRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SaveMoneyScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      final args = routeData.argsAs<HomeRouterArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.HomeScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    LatestActivitiesPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LatestActivitiesPage(),
      );
    },
    QrCodeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.QrCodeScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.OnboardingScreen(
          onGetStartedPressed: args.onGetStartedPressed,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    LatestActivitiesPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.LatestActivitiesPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-screen',
        ),
        _i9.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-screen',
        ),
        _i9.RouteConfig(
          SaveMoneyRoute.name,
          path: '/save-money-screen',
        ),
        _i9.RouteConfig(
          HomeRouter.name,
          path: '/home-screen',
          children: [
            _i9.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: HomeRouter.name,
            )
          ],
        ),
        _i9.RouteConfig(
          LatestActivitiesPage.name,
          path: 'latestActivities',
        ),
        _i9.RouteConfig(
          QrCodeRoute.name,
          path: '/qr-code-screen',
        ),
        _i9.RouteConfig(
            ),
            _i9.RouteConfig(
              LatestActivitiesPage.name,
              path: 'latestActivities',
              parent: HomeRouter.name,
            ),
          ],
        ),
        _i9.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInScreen]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-screen',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-screen',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.SaveMoneyScreen]
class SaveMoneyRoute extends _i9.PageRouteInfo<void> {
  const SaveMoneyRoute()
      : super(
          SaveMoneyRoute.name,
          path: '/save-money-screen',
        );

  static const String name = 'SaveMoneyRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRouter extends _i9.PageRouteInfo<HomeRouterArgs> {
  HomeRouter({
    _i10.Key? key,
    required _i11.User user,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeRouter.name,
          path: '/home-screen',
          args: HomeRouterArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

class HomeRouterArgs {
  const HomeRouterArgs({
    this.key,
    required this.user,
  });

  final _i10.Key? key;

  final _i11.User user;

  @override
  String toString() {
    return 'HomeRouterArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i5.LatestActivitiesPage]
class LatestActivitiesPage extends _i9.PageRouteInfo<void> {
  const LatestActivitiesPage()
      : super(
          LatestActivitiesPage.name,
          path: 'latestActivities',
        );

  static const String name = 'LatestActivitiesPage';
}

/// generated route for
/// [_i6.QrCodeScreen]
class QrCodeRoute extends _i9.PageRouteInfo<void> {
  const QrCodeRoute()
      : super(
          QrCodeRoute.name,
          path: '/qr-code-screen',
        );

  static const String name = 'QrCodeRoute';
}

/// generated route for
/// [_i7.OnboardingScreen]
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i9.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    void Function()? onGetStartedPressed,
    _i10.Key? key,
  }) : super(
          OnboardingRoute.name,
          path: '/onboarding-screen',
          args: OnboardingRouteArgs(
            onGetStartedPressed: onGetStartedPressed,
            key: key,
          ),
        );

  static const String name = 'OnboardingRoute';
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.onGetStartedPressed,
    this.key,
  });

  final void Function()? onGetStartedPressed;

  final _i10.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{onGetStartedPressed: $onGetStartedPressed, key: $key}';
  }
}

/// generated route for
/// [_i8.ProfileScreen]
/// [_i7.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.LatestActivitiesPage]
class LatestActivitiesPage extends _i9.PageRouteInfo<void> {
  const LatestActivitiesPage()
      : super(
          LatestActivitiesPage.name,
          path: 'latestActivities',
        );

  static const String name = 'LatestActivitiesPage';
}
