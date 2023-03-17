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
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../contact_us/view/contact_us_screen.dart' as _i12;
import '../contact_us/view/contact_us_success_screen.dart' as _i13;
import '../core/domain/user.dart' as _i17;
import '../email_confirmation/email_confirmation.dart' as _i4;
import '../home/view/home_screen.dart' as _i8;
import '../latest_activities/view/latest_activities_screen.dart' as _i9;
import '../onboarding/view/onboarding_screens.dart' as _i11;
import '../onboarding/view/splash_screen.dart' as _i1;
import '../payment_methods/payment_method_screen.dart' as _i7;
import '../phone_number_confirmation/view/phone_number_confirmation.dart'
    as _i3;
import '../profile/view/profile_page.dart' as _i14;
import '../qr_code_screen/view/qr_code_screen.dart' as _i10;
import '../savings/save_money_with_bucket/save_money_with_bucket.dart' as _i6;
import '../sign_in/view/sign_in_page.dart' as _i2;
import '../sign_up/view/signup_page.dart' as _i5;

class AppRoute extends _i15.RootStackRouter {
  AppRoute([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInScreen(),
      );
    },
    PhoneNumberConfirmationRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PhoneNumberConfirmationScreen(),
      );
    },
    EmailConfirmationRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmailConfirmationScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpScreen(),
      );
    },
    SaveMoneyRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SaveMoneyScreen(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PaymentMethodScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      final args = routeData.argsAs<HomeRouterArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.HomeScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    LatestActivitiesPage.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.LatestActivitiesPage(),
      );
    },
    QrCodeRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.QrCodeScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.OnboardingScreen(
          onGetStartedPressed: args.onGetStartedPressed,
          key: args.key,
        ),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ContactUsScreen(),
      );
    },
    ContactUsSuccessRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ContactUsSuccessScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i15.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-screen',
        ),
        _i15.RouteConfig(
          PhoneNumberConfirmationRoute.name,
          path: '/phone-number-confirmation-screen',
        ),
        _i15.RouteConfig(
          EmailConfirmationRoute.name,
          path: '/email-confirmation-screen',
        ),
        _i15.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-screen',
        ),
        _i15.RouteConfig(
          SaveMoneyRoute.name,
          path: '/save-money-screen',
        ),
        _i15.RouteConfig(
          PaymentMethodRoute.name,
          path: '/payment-method-screen',
        ),
        _i15.RouteConfig(
          HomeRouter.name,
          path: '/home-screen',
          children: [
            _i15.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: HomeRouter.name,
            )
          ],
        ),
        _i15.RouteConfig(
          LatestActivitiesPage.name,
          path: 'latestActivities',
        ),
        _i15.RouteConfig(
          QrCodeRoute.name,
          path: '/qr-code-screen',
        ),
        _i15.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-screen',
        ),
        _i15.RouteConfig(
          ContactUsRoute.name,
          path: '/contact-us-screen',
        ),
        _i15.RouteConfig(
          ContactUsSuccessRoute.name,
          path: '/contact-us-success-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInScreen]
class SignInRoute extends _i15.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-screen',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.PhoneNumberConfirmationScreen]
class PhoneNumberConfirmationRoute extends _i15.PageRouteInfo<void> {
  const PhoneNumberConfirmationRoute()
      : super(
          PhoneNumberConfirmationRoute.name,
          path: '/phone-number-confirmation-screen',
        );

  static const String name = 'PhoneNumberConfirmationRoute';
}

/// generated route for
/// [_i4.EmailConfirmationScreen]
class EmailConfirmationRoute extends _i15.PageRouteInfo<void> {
  const EmailConfirmationRoute()
      : super(
          EmailConfirmationRoute.name,
          path: '/email-confirmation-screen',
        );

  static const String name = 'EmailConfirmationRoute';
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpRoute extends _i15.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-screen',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i6.SaveMoneyScreen]
class SaveMoneyRoute extends _i15.PageRouteInfo<void> {
  const SaveMoneyRoute()
      : super(
          SaveMoneyRoute.name,
          path: '/save-money-screen',
        );

  static const String name = 'SaveMoneyRoute';
}

/// generated route for
/// [_i7.PaymentMethodScreen]
class PaymentMethodRoute extends _i15.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(
          PaymentMethodRoute.name,
          path: '/payment-method-screen',
        );

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRouter extends _i15.PageRouteInfo<HomeRouterArgs> {
  HomeRouter({
    _i16.Key? key,
    required _i17.User user,
    List<_i15.PageRouteInfo>? children,
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

  final _i16.Key? key;

  final _i17.User user;

  @override
  String toString() {
    return 'HomeRouterArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i9.LatestActivitiesPage]
class LatestActivitiesPage extends _i15.PageRouteInfo<void> {
  const LatestActivitiesPage()
      : super(
          LatestActivitiesPage.name,
          path: 'latestActivities',
        );

  static const String name = 'LatestActivitiesPage';
}

/// generated route for
/// [_i10.QrCodeScreen]
class QrCodeRoute extends _i15.PageRouteInfo<void> {
  const QrCodeRoute()
      : super(
          QrCodeRoute.name,
          path: '/qr-code-screen',
        );

  static const String name = 'QrCodeRoute';
}

/// generated route for
/// [_i11.OnboardingScreen]
class OnboardingRoute extends _i15.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    void Function()? onGetStartedPressed,
    _i16.Key? key,
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

  final _i16.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{onGetStartedPressed: $onGetStartedPressed, key: $key}';
  }
}

/// generated route for
/// [_i12.ContactUsScreen]
class ContactUsRoute extends _i15.PageRouteInfo<void> {
  const ContactUsRoute()
      : super(
          ContactUsRoute.name,
          path: '/contact-us-screen',
        );

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i13.ContactUsSuccessScreen]
class ContactUsSuccessRoute extends _i15.PageRouteInfo<void> {
  const ContactUsSuccessRoute()
      : super(
          ContactUsSuccessRoute.name,
          path: '/contact-us-success-screen',
        );

  static const String name = 'ContactUsSuccessRoute';
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
