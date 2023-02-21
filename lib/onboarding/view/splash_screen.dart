// a stateless widget that shows the splash screen with a logo and a text
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/router/app_route.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    final cached = getIt<Cached>();
    return MultiBlocListener(
      listeners: [
        BlocListener<InternetAndTimeBloc, InternetAndTimeState>(
          listenWhen: (p, c) => !c.isConnected || !c.isTimeSynced,
          listener: (context, state) {
            if (!state.isConnected) {
              // _alertNoInternetDetected(context);
            }
            if (!state.isTimeSynced) {
              // _alertTimeNotSyncedDetected(context);
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              splash: (_) {},
              authenticated: (_) {
                context.router.popUntil((route) => route.isFirst);
                context.router.push(HomeRoute(user: _.user));
              },
              unauthenticated: (_) {
                context.router.popUntil((route) => route.isFirst);
                if (cached.firstTimeUser) {
                  cached.firstTimeUser = false;
                  context.router.push(OnboardingRoute());
                } else {
                  context.router.push(SignInRoute());
                }
              },
            );
          },
        ),
      ],
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
