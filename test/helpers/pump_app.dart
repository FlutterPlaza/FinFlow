// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';
import 'package:fpb/l10n/l10n.dart';

import 'helpers.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    MockAppSettingsHelper? mockAppSettingsHelper,
    MockIAuthFacade? mockIAuthFacadeForAuthBloc,
    MockIGoogleRepositoryFacade? mockIGoogleRepositoryFacade,
    MockIFacebookRepositoryFacade? mockIFacebookRepositoryFacade,
    MockIAuthFacade? mockIAuthFacadeFroEmailPasswordBloc,
    MockCached? mockCachedForHomeBloc,
  }) {
    return pumpWidget(
      MultiBlocProvider(
        providers: [
          // BlocProvider<AuthenticationBloc>(
          //     create: (context) => getIt<AuthenticationBloc>()),
          if (mockAppSettingsHelper != null)
            BlocProvider(
              create: (context) => InternetAndTimeBloc(
                mockAppSettingsHelper,
              ),
            ),
          if (mockIAuthFacadeForAuthBloc != null)
            BlocProvider(
              create: (context) => AuthBloc(
                mockIAuthFacadeForAuthBloc,
              )..add(const AuthEvent.triggerAuthRequest()),
            ),
          if (mockIGoogleRepositoryFacade != null)
            BlocProvider(
              create: (context) => GoogleSignInBloc(
                authenticationRepository: mockIGoogleRepositoryFacade,
              ),
            ),
          if (mockIFacebookRepositoryFacade != null)
            BlocProvider(
              create: (context) => FacebookAuthBloc(
                authenticationRepository: mockIFacebookRepositoryFacade,
              ),
            ),
          if (mockIAuthFacadeFroEmailPasswordBloc != null)
            BlocProvider(
              create: (context) => EmailPasswordBloc(
                authenticationRepository: mockIAuthFacadeFroEmailPasswordBloc,
              ),
            ),
          if (mockCachedForHomeBloc != null)
            BlocProvider(
              create: (context) => HomeViewBloc(mockCachedForHomeBloc)
                ..add(
                  HomeViewEvent.lastState(),
                ),
            ),
          // BlocProvider(
          //   create: (context) => BiometricAuthBloc(
          //       authenticationRepository: LocalAuthentication()),
          // ),
        ],
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }

  Future<void> pumpAppWithoutDependencies(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
